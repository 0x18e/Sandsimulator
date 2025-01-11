#pragma once
#include "Utilities.h"
#include<SDL.h>
#include "CEntity.h"
#include <cstdint>
#include <stdint.h>


enum ParticleTypes {
	EMPTY,
	GROUND,
	SAND,
	WATER,
};

enum Directions{
    NONE,
    RIGHT,
    LEFT,
};
struct Particle {
	uint8_t type;
	SDL_Texture* texture;
	Vector2 velocity;
	Vector2 position;
    int8_t direction = 0;
};





class CLogic {
private:
	SDL_Renderer* m_pRenderer;
		
	std::vector<CEntity*> m_pEntities;
	bool is_clicking = false;

	// Set local window widths and heights
	int m_nWindowWidth;
	int m_nWindowHeight;
	uint8_t tile_size = 64; // Tile size needed to evenly fill the 8x8 grid.
	int grid_height;
	int grid_width;
	CTextureHandler m_handler;
	std::vector<std::vector<Particle>> grid; // Our grid
	std::vector<std::vector<Particle>> piece_table;	


public:
	CLogic();
	~CLogic();
	void MoveObjectDown(int x, int y) {
		if (x < 0 || x >= grid.size() || y < 0 || grid[0].size() >= m_nWindowHeight) {
			LOG("Returning");
			return;
		}

		// Ensure the target position (x, y + 1) is within bounds
		if (y + 1 >= grid[0].size()) {
			return; // Can't move further down
		}
		// Swap the current particle with the one below


		//std::swap(grid[x][y], grid[x][y + 1]);
		Particle tmp = grid[x][y];

		grid[x][y] = grid[x][y+1];
		grid[x][y + 1] = tmp;
	}
	void Swap(Particle& p1, Particle& p2) {
        if (p1.type == EMPTY && p2.type == EMPTY){
            return;
        }
		std::swap(p1, p2);
	}
	
	void InitPieces();
	void HandleSand(const uint8_t& x, const uint8_t& y, float dt) {
		

		
		if (y == grid[x].size() - 1) {
			// We're at the bottom;
			// since we're sand dont really do anything
		}
		else {
			if (grid[x][y + 1].type == ParticleTypes::EMPTY) {
				// We can move downwards
				Swap(grid[x][y], grid[x][y + 1]);
			}
			else if (x == 0) {
				// Very left
				// Only check if you can go to the right
				if (grid[x + 1][y + 1].type == EMPTY) {
					Swap(grid[x][y], grid[x + 1][y + 1]);
				}
			}
			else if (x == grid.size() - 1) {
                LOG("This is true");
				// very right
				if (grid[x - 1][y + 1].type == EMPTY) {
					Swap(grid[x][y], grid[x - 1][y + 1]);
				}
			}
			else if (grid[x + 1][y + 1].type == ParticleTypes::EMPTY && grid[x - 1][y + 1].type == ParticleTypes::EMPTY){
				int random = GetRandomNumber(0, 1);
				if (random == 0) {
					Swap(grid[x][y], grid[x + 1][y + 1]);
				}
				if (random == 1) {
					Swap(grid[x][y], grid[x - 1][y + 1]);
				}
			}
			else {
				if (grid[x + 1][y + 1].type == EMPTY) {
					// Bottom right is empty
					Swap(grid[x][y], grid[x + 1][y + 1]);
				}
				else if (grid[x - 1][y + 1].type == EMPTY) {
					Swap(grid[x][y], grid[x - 1][y + 1]);
				}
			}
		}
		
	}




void HandleWater(uint8_t x, uint8_t y) {
    // ---------------------------------------
    // 1) Vertical / diagonal movement first
    // ---------------------------------------
    if (y == grid[x].size() - 1) {
        // Bottom edge
        return;
    }
    else {
        // Try down
        if (grid[x][y + 1].type == EMPTY) {
            Swap(grid[x][y], grid[x][y + 1]);
            return; // Moved down, done
        }
        // Try diagonal down-right
        else if (x < grid.size() - 1 && grid[x + 1][y + 1].type == EMPTY) {
            Swap(grid[x][y], grid[x + 1][y + 1]);
            return; // Moved diagonally, done
        }
        // Try diagonal down-left
        else if (x > 0 && grid[x - 1][y + 1].type == EMPTY) {
            Swap(grid[x][y], grid[x - 1][y + 1]);
            return; // Moved diagonally, done
        }
    }

    // If no direction set yet, pick one
    if (grid[x][y].direction == Directions::NONE) {
        // You can pick randomly, or always default to RIGHT, etc.
        // Example: 50% chance left or right
        int random = GetRandomNumber(0, 1);  
        if (random == 0)
            grid[x][y].direction = Directions::LEFT;
        else
            grid[x][y].direction = Directions::RIGHT;
    }

    // If direction is RIGHT
    if (grid[x][y].direction == Directions::RIGHT) {
        // Check if we can move right
        if (x < grid.size() - 1 && grid[x + 1][y].type == EMPTY) {
            Swap(grid[x][y], grid[x + 1][y]);
        } else {
            // Can't move right, switch to LEFT
            grid[x][y].direction = Directions::LEFT;
            // Optionally, you can immediately try to move left
            // if (x > 0 && grid[x - 1][y].type == EMPTY) {
            //     Swap(grid[x][y], grid[x - 1][y]);
            // }
        }
    }

    // If direction is LEFT
    else if (grid[x][y].direction == Directions::LEFT) {
        // Check if we can move left
        if (x > 0 && grid[x - 1][y].type == EMPTY) {
            Swap(grid[x][y], grid[x - 1][y]);
        } else {
            // Can't move left, switch to RIGHT
            grid[x][y].direction = Directions::RIGHT;
            // Optionally, immediately try to move right
            // if (x < grid.size() - 1 && grid[x + 1][y].type == EMPTY) {
            //     Swap(grid[x][y], grid[x + 1][y]);
            // }
        }
    }
}
	void UpdateParticles(float &dt) {
		// Iterate backwards and apply downward physics gravity
		/*
		for (int x = grid.size()-1; x >= 0; --x) {
			for (int y = grid[x].size()-1; y >= 0; --y) {
				if (y != grid[x].size() -1) {
					if (grid[x][y].type == ParticleTypes::SAND){
						HandleSand(x, y);
					}
				}
			}
		}
		*/
		/* uncomment this, also segfaults here somewhere deal with it
		for (int x = grid.size(); x > 0; --x) {
			for (int y = grid[x].size(); y > 0; --y) {
                if (grid[x][y].type == EMPTY){
                    continue;
                }
				if (grid[x][y].type == SAND && y != grid[x].size()) {	
	//				HandleSand(x, y, dt);
				}

				if (grid[x][y].type == WATER && y != grid[x].size()) {
     //               HandleWater(x, y);
                }
			}
		}
		*/
	}
	void Init(SDL_Renderer* renderer, int WindowWidth, int WindowHeight);
	void AdjustResolution(int x, int y);
	void SpawnSand(int x, int y) {
		Particle p;
		p.texture = m_handler.GetTexture("sand");
		p.type = SAND;
		p.velocity.x = 0;
		p.velocity.y = 0;
		p.position.x = x;
		p.position.y = y;

		grid[x][y] = p;
	}
	void SpawnWater(int x, int y) {
		Particle p;
		p.texture = m_handler.GetTexture("water");
		p.type = WATER;

		grid[x][y] = p;
	}

	// Core functions
	void Update(float dt);
	void Render();
	void Cleanup();
	void InputHandler(const SDL_Event &key);
};
