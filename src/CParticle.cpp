#include "CParticle.h"


// Initialize its position
void Particle::Init(Vector2 initial_position) {
	if (initial_position.x < 0 || initial_position.y < 0) {
		return;
	}
	// Set our initial position
	m_Position = initial_position;
	m_nMass = 5; // weigh 5 units
}

void Particle::ApplyFreefall(float dt) {
	// Apply f = ma with respect to time
	// Set basic gravity
	float acceleration = 9.81f;

	// If we are not supported apply gravity
	if (m_Position.y < m_nGround) {
		//m_Velocity.y = m_Velocity.y + acceleration * dt; // Following basic kinematics
		//m_Position = m_Position + m_Velocity * dt;
		m_Position.y += 1;
	}
	else {
		m_Position.y = m_nGround;
		m_Velocity.y = 0;
	}



}

bool Particle::ParticleBelow(const std::vector<Particle*>& particles) {
	// Check if we're supported, provide the entire list of particles
	// If we are a particle and theres one particle thats directly below us on our same x-axis
	// We are supported, stop applying gravity
	for (size_t i = 0; i < particles.size(); ++i) {
		// Now here we check if our particles position on the x is the same as the other particle
		// And we also check for the y
		if (m_Position.x == particles[i]->m_Position.x && m_Position.y == particles[i]->m_Position.y-1) {
			// This means we are supported by another block
			return true;
		}
	}

	return (m_Position.y == m_nGround);
}

void Particle::HandleCollision(Particle& particle) {
	if (&particle == this) {
		return;
	}
	if (m_Position.x == particle.m_Position.x && m_Position.y == particle.m_Position.y) {
		m_Position.y = particle.m_Position.y - 1;
	}
}


void Particle::Draw() {
	SDL_RenderDrawPoint(CRenderer::Get().GetRenderer(), m_Position.x, m_Position.y);
}
