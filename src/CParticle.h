#include "CEntity.h" // This might be unneeded
#include "CRenderer.h"

/*
* This class simply defines a base particle, as a point mass.
* this class will handle:
	Rendering

*/
class Particle{
private: 
	int m_nGround = 799;
	Vector2 m_Position;
	Vector2 m_Velocity;
	int m_nMass;
public:
	void Init(Vector2 initial_position);
	void ApplyFreefall(float dt);
	int GetX() const { return m_Position.x; }
	int GetY() const { return m_Position.y; }
	bool ParticleBelow(const std::vector<Particle*> &particles);

	void HandleCollision(Particle& particle);
	void Draw();
};

