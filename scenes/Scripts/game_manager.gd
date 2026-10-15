extends Node
signal score_changed(new_score: int)
signal cost_changed(new_score: int)
signal master_score_changed(new_score: int)
var score: int = 0
var  master_score: int=0
var cost: int=0
var g = 0
var r = 0
var w = 0
var ufo = 0
var s = 0
var gold = 0
var gs = 0
var rs = 0
var ws = 0
var ss = 0
var us = 0
var golds = 0
func add_score() -> void:
	score += 1
	score_changed.emit(score)
	master_score +=1
func costset(x)-> void:
	cost = x
	cost_changed.emit(cost)
func master_score_count()-> void:
	master_score_changed.emit(master_score)
func unlockg()-> void:
	g += 1
	print(g)
func unlockr()-> void:
	r += 1
func unlockw()-> void:
	w += 1
func unlocks()-> void:
	s += 1
func unlockgold()-> void:
	gold += 1
func unlockufo()-> void:
	ufo += 1
func greensprite()-> void:
	gs = 1

	
