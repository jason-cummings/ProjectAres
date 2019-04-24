#ifndef MAPBUILDER_H
#define MAPBUILDER_H

#include "MenuState.h"
#include "MapMenu.h"
#include "Map.h"

class MapMenu;
class MapBuilder: public MenuState {
private:
	Button* backButton;
	MapMenu* mm;
    Map* map;

public:
	MapBuilder( MapMenu* upMenu );
	~MapBuilder();

	// Functions inherited from State
	void render();
	void update( float dt );

	// Handlers inherited from State
	void keyPressed( SDL_Keycode key );
	void keyReleased( SDL_Keycode key );
	void mousePressed( int x, int y );
	void mouseReleased( int x, int y );
	void mouseMoved( int dx, int dy );
};

#endif