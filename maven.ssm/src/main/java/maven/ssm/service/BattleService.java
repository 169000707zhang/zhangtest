package maven.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import maven.ssm.dao.BattleDao;
import maven.ssm.entity.Battle;


@Service
public class BattleService {
	@Autowired
	private BattleDao battleDao;
	
	public List<Battle> getBattles() {
		return battleDao.getBattles();
	}
	
	public List<Battle> getBattlesbyState() {
		return battleDao.getBattlesbyState();
	}
	
	public int insertBattle(Battle battle) {
		int cnt=battleDao.isBattle(battle.getBattleid());
    	if(cnt>0){
			return -2;
		}
		int i= battleDao.addBattle(battle);
		return i;
	}
	
	public Battle getBattleByid(int battleid) {
		return battleDao.getBattleByid(battleid);
	}
	
	public int changeState(int battleid) {
		return battleDao.changeState(battleid);
	}
}
