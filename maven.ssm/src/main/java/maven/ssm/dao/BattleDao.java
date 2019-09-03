package maven.ssm.dao;

import java.util.List;

import maven.ssm.entity.Battle;



public interface BattleDao {
	List<Battle> getBattles();
	int addBattle(Battle battle);
	int isBattle(int battleid);
	List<Battle> getBattlesbyState();
	Battle getBattleByid(int battleid);
	int changeState(int battleid);
}
