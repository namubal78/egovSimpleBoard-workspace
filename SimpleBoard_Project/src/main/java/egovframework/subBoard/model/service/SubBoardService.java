package egovframework.subBoard.model.service;

import java.util.ArrayList;

import egovframework.common.model.vo.CommonVo;
import egovframework.subBoard.model.vo.SubBoard;

public interface SubBoardService {

	int selectListCount(CommonVo cvPi);

	ArrayList<SubBoard> selectList(CommonVo cv);

	int increaseCount(int subBno);

	SubBoard selectBoard(int subBno);

	int insertBoard(SubBoard b);

	int deleteBoard(int subBno);

}
