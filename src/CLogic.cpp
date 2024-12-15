#include "CLogic.h"

CLogic::CLogic() : m_pRenderer(nullptr), m_nWindowHeight(0), m_nWindowWidth(0){
}


// Use this for any startup required things
void CLogic::Init(SDL_Renderer* renderer, int WindowWidth, int WindowHeight) {
	m_nWindowWidth = WindowWidth;
	m_nWindowHeight = WindowHeight;
	m_handler.LoadAllTextures();
	
	grid_width = m_nWindowWidth / tile_size;
	grid_height = m_nWindowHeight / tile_size;
	// Make the grid
	for (int x = 0; x < grid_width; ++x) {
		std::vector<Particle> row;
		for (int y = 0; y < grid_height; ++y) {
			Particle n;
			if (y != grid_height - 1) {
				n.texture = m_handler.GetTexture("blue");
				n.type = EMPTY;
			}
			else {
				n.texture = m_handler.GetTexture("sand");
				n.type = ParticleTypes::SAND;
			}
			
			row.push_back(n);
			//grid[x][y] = n; // ok this makes sense
		
		}
		grid.push_back(row);
	}
}

void CLogic::AdjustResolution(int x, int y) {

	for (size_t it = 0; it < m_pEntities.size(); ++it) {
		m_pEntities[it]->AdjustForResolution(Vector2(x, y), Vector2(m_nWindowWidth, m_nWindowHeight));
	}
	m_nWindowWidth = x;
	m_nWindowHeight = y;
}




void CLogic::Update(float dt) {
	this->UpdateParticles(dt);
	if (is_clicking) {
		int x, y;
		SDL_GetMouseState(&x, &y);
		SpawnSand(x / tile_size, y / tile_size);
	}
	
}

// Draw calls
void CLogic::Render(){
	// Clear the background with all white
	SDL_SetRenderDrawColor(CRenderer::Get().GetRenderer(), 0x00, 0x00, 0x00, 0xff);
	SDL_RenderClear(CRenderer::Get().GetRenderer());

	// Rendering entities
	SDL_SetRenderDrawColor(CRenderer::Get().GetRenderer(), 0xFF, 0xFF, 0x00, 0xFF);

	// Draw grid here
	for (int x = 0; x < grid.size(); x++) {
		for (int y = 0; y < grid[x].size(); ++y) {
			if (grid[x][y].texture) {
				SDL_Rect rec;
				rec.x = x * tile_size;
				rec.y = y * tile_size;
				rec.w = tile_size;
				rec.h = tile_size;
				SDL_RenderCopy(CRenderer::Get().GetRenderer(), grid[x][y].texture, nullptr, &rec);
			}
		}
	}
	
	
	SDL_RenderPresent(CRenderer::Get().GetRenderer());
}


// Main games input handler
void CLogic::InputHandler(const SDL_Event& key) {

	switch (key.type) {
	case SDL_MOUSEBUTTONDOWN:
		
		is_clicking = true;
		
		//LOG(x / tile_size << " " << y / tile_size);
		break;
	case SDL_MOUSEBUTTONUP:
		is_clicking = false;
		break;
	case SDL_KEYDOWN:
		switch (key.key.keysym.sym) {
			// Left
		case SDLK_a:
			int x, y;
			SDL_GetMouseState(&x, &y);
			SpawnWater(x/tile_size, y/tile_size);
			break;
			// Right
		case SDLK_d:
			break;
			// Up
		case SDLK_w:
			break;
			// Down
		case SDLK_s:
			break;
		case SDLK_e:
			break;
		default:
			break;
		}
		break;
	}
	// Pass input wherever it is required
}





void CLogic::Cleanup() {

}
CLogic::~CLogic() {
	
	LOG("Cleaning up logic..");
	Cleanup();
}