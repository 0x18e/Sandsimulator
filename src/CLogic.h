#pragma once
#include "Utilities.h"
#include<SDL.h>
#include "CEntity.h"
#include "CBasePlayer.h"
#include "CRenderer.h"
#include <stdint.h>


enum ParticleTypes {
	EMPTY,
	GROUND,
	SAND,
	WATER,
};

struct Particle {
	uint8_t type;
	SDL_Texture* texture;
	Vector2 velocity;
	Vector2 position;

};










 class CLogic {
private:
	SDL_Renderer* m_pRenderer;
		
	std::vector<CEntity*> m_pEntities;
	bool is_clicking = false;

	// Set local window widths and heights
	int m_nWindowWidth;
	int m_nWindowHeight;
	uint8_t tile_size = 8;
	int grid_height = 800;
	int grid_width = 1280;
	CTextureHandler m_handler;
	std::vector<std::vector<Particle>> grid; // Our grid
	


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
		std::swap(p1, p2);
	}
	
	void HandleSand(const uint8_t& x, const uint8_t& y) {
		Particle& p = grid[x][y];

		// Convert velocity to discrete steps (could be velocity * dt, truncated to int)
		int moveX = static_cast<int>(p.velocity.x);
		int moveY = static_cast<int>(p.velocity.y);
		
		p.position += p.velocity;

		// If there's a desire to move downward (moveY > 0), check the cell below:
		if (moveY > 0 && y + 1 < grid[x].size()-1 && grid[x][y + 1].type == EMPTY) {
			int xpos = p.position.x;
			int ypos = p.position.y;
			Swap(grid[x][y], grid[x][y + 1]);
			LOG("Moved down");
		}
		// If there's a desire to move sideways (moveX != 0), try to move left or right
		else if (moveX > 0 && x + 1 < grid_width && grid[x + 1][y].type == EMPTY) {
			Swap(grid[x][y], grid[x + 1][y]);
		}

		/*
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
				// very right
				if (grid[x - 1][y + 1].type == EMPTY) {
					Swap(grid[x][y], grid[x - 1][y + 1]);
				}
			}
			else if (grid[x + 1][y + 1].type == ParticleTypes::EMPTY && grid[x - 1][y + 1].type == ParticleTypes::EMPTY) {
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
		*/
	}


	void ApplyPhysics(float dt) {
		for (int x = 0; x < grid.size(); ++x) {
			for (int y = 0; y < grid[x].size(); ++y) {
				// Apply physics to all objects

			}
		}
	}

	void HandleWater(uint8_t x, uint8_t y) {
		// If we are at the bottom row, there's nowhere to go
		if (y == grid[x].size() - 1) {
			// Bottom boundary. No downward movement possible.
			return;
		}

		// Check other boundaries for columns
		if (x == grid.size() - 1) {
			// Right edge boundary:
			// 1) Check if we can go down
			if (grid[x][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x][y + 1]);
			}
			// 2) Since x == grid.size() - 1, we cannot go bottom-right
			//    But we can still check bottom-left if x - 1 is valid
			else if (x > 0 && grid[x - 1][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x - 1][y + 1]);
			}
			// 3) Check sideways left if possible
			else if (x > 0 && grid[x - 1][y].type == EMPTY) {
				Swap(grid[x][y], grid[x - 1][y]);
			}
			// If none of these conditions are met, do nothing
		}
		else if (x == 0) {
			// Left edge boundary:
			// 1) Check if we can go straight down
			if (grid[x][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x][y + 1]);
			}
			// 2) Since x == 0, we cannot go bottom-left
			//    But we can still check bottom-right if x + 1 is valid
			else if (x + 1 < grid.size() && grid[x + 1][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x + 1][y + 1]);
			}
			// 3) Check sideways right
			else if (x + 1 < grid.size() && grid[x + 1][y].type == EMPTY) {
				Swap(grid[x][y], grid[x + 1][y]);
			}
			// If none of these conditions are met, do nothing
		}
		else {
			// This is the normal case (not on the leftmost or rightmost edge):
			// 1) Check if we can go straight down
			if (grid[x][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x][y + 1]);
			}
			// 2) Bottom-right
			else if (x + 1 < grid.size() && grid[x + 1][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x + 1][y + 1]);
			}
			// 3) Bottom-left
			else if (x > 0 && grid[x - 1][y + 1].type == EMPTY) {
				Swap(grid[x][y], grid[x - 1][y + 1]);
			}
			// 4) Right
			else if (x + 1 < grid.size() && grid[x + 1][y].type == EMPTY) {
				Swap(grid[x][y], grid[x + 1][y]);
			}
			// 5) Left
			else if (x > 0 && grid[x - 1][y].type == EMPTY) {
				Swap(grid[x][y], grid[x - 1][y]);
			}
			// If none apply, water stays put
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
		for (int x = 0; x < grid.size(); ++x) {
			for (int y = 0; y < grid[x].size(); ++y) {
				

				if (grid[x][y].type == SAND && y != grid[x].size()) {
					
					grid[x][y].velocity.y += 9.81 * dt;
					HandleSand(x, y);
				}
			}
		}
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