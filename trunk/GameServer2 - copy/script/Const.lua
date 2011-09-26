--============================================
-- filename: Const.lua
-- 설명: 스크립트나 C++에서 사용하는 상수
--
--============================================

--======================================================
-- C++에서 사용하는 상수
-- 상수 이름을 변경할 경우 C++에도 함께 변경해야 한다.
--======================================================

-- 일반
CONST_KEEP_PLAYER_SPAWN = true;				-- 플레이어의 마지막 위치를 기록할지 여부
RUN_RESOURCE_VALIDATOR	= true;				-- 외부 데이터 파일 유효성 체크 여부
RUN_FOR_TEST = false;						-- 서버를 테스트용으로 구동할지 여부, 다른 디버그용 CONST 값이 켜져있어도 이 값이 false이면 디버그, 테스트 코드가 작동하지 않습니다.
GAME_TICK = 20;								-- 서버 틱
SERVER_SLEEP = true;

-- 필드 관련 ---------------------------------
INCLUDE_DEV_FIELD_LIST 	= false;			-- 개발중인 필드 로딩 여부

-- 환경(시간, 날씨) 관련 ---------------------

CONST_LOCALTIME_PER_GAMETIME_ONE_HOUR	= 840;		-- 실시간 14분이 게임 1시간
CONST_ENV_TIME_UPDATE_TICK_SEC			= 60;		-- 시간체크 틱값(초) - 60초


-- 게임내 시간대 설정
CONST_ENV_TIME_DAWN_START_HOUR		= 4;		-- AM 4시부터 새벽(Dawn)
CONST_ENV_TIME_DAYTIME_START_HOUR	= 7;		-- AM 7시부터 낮(Daytime)
CONST_ENV_TIME_SUNSET_START_HOUR	= 18;		-- PM 6시부터 해질녘(Sunset)
CONST_ENV_TIME_NIGHT_START_HOUR		= 21;		-- PM 9시부터 자정(Night)

CONST_ENV_WEATHER_TICK_SEC			= 5040;		-- 날씨 변화 틱 84분 (84 * 60)

--- 동적 필드 관련 ---------------------------------
CONST_DYNAMICFIELD_EXPIRED_TIME	= 800;		-- 동적 필드 그룹에 유효한 플레이어가 없을때 동적 필드 그룹을 유지시켜주는 여유시간  [디폴트 15분] (단위: 초)

--CONST_LOCALTIME_PER_GAMETIME_ONE_HOUR	= 5;		-- 실시간 5초가 게임 1시간
--CONST_ENV_TIME_UPDATE_TICK_SEC			= 5;	-- 시간체크 틱값(초) - 60초
--CONST_ENV_WEATHER_TICK_SEC			= 5;		-- 날씨 변화 틱(5초)

-- 날씨 상태 전이표


-- 전투 관련 ------------------------------------
PVP_MODE	= false;								-- 플레이어간 전투 가능 여부

COMBAT_CHASE_MAX_DURATION_TIME			= 60.0;		-- 전투중 탤런트를 쓰기위한 추적의 최대시간

STRESS_ADD_INTERRUPT_DURING_ATTACKING	= 10;		-- 공격시 인터럽트 당할때 얻는 스트레스 수치
STRESS_ADD_LIMITED_CHASE_TIME			= 10;		-- 공격하려고 추적한 시간동안 받는 스트레스 수치
STRESS_CHASE_INTERVAL					= 1;		-- 공격하려고 추적하여 스트레스 받을때의 시간 간격(단위: 초)
STRESS_ADD_AVOID_MELEE_ATTACK			= 10;		--  NPC의 접근 공격을 적이 회피시 받는 스트레스 수치
STRESS_ADD_AVOID_RANGE_ATTACK			= 10;		-- NPC의 원거리 공격을 적이 회피시 받는 스트레스 수치

STATE_FACTOR_FOR_DAMAGE_BY_BACK			= 1.5;		--  상태에 따른 데미지 보정 뒤에서 맞았을때
STATE_FACTOR_FOR_DAMAGE_BY_BEATEN		= 1.0;		--  상태에 따른 데미지 보정 MF_BEATEN
STATE_FACTOR_FOR_DAMAGE_BY_STUN		    = 1.2;		--  상태에 따른 데미지 보정 MF_STUN
STATE_FACTOR_FOR_DAMAGE_BY_DEFLECT		= 1.2;		--  상태에 따른 데미지 보정 MF_DEFLECT
STATE_FACTOR_FOR_DAMAGE_BY_STAGGER		= 1.2;		--  상태에 따른 데미지 보정 MF_STAGGER
STATE_FACTOR_FOR_DAMAGE_BY_THROWUP		= 1.2;		--  상태에 따른 데미지 보정 MF_THROWUP
STATE_FACTOR_FOR_DAMAGE_BY_KNOCKDOWN	= 1.5;		--  상태에 따른 데미지 보정 MF_KNOCKDOWN
STATE_FACTOR_FOR_DAMAGE_BY_UPPERED		= 1.2;		--  상태에 따른 데미지 보정 MF_UPPERED

STATE_FACTOR_FOR_MF_VALUE_BY_BACK		= 1.5;		--  상태에 따른 모션팩터 보정 뒤에서 맞았을 때
STATE_FACTOR_FOR_MF_VALUE_BY_BEATEN		= 1.0;		--  상태에 따른 모션팩터 보정 MF_BEATEN	
STATE_FACTOR_FOR_MF_VALUE_BY_STUN		= 1.5;		--  상태에 따른 모션팩터 보정 MF_STUN
STATE_FACTOR_FOR_MF_VALUE_BY_DEFLECT	= 1.0;		--  상태에 따른 모션팩터 보정 MF_DEFLECT
STATE_FACTOR_FOR_MF_VALUE_BY_STAGGER	= 1.0;		--  상태에 따른 모션팩터 보정 MF_STAGGER
STATE_FACTOR_FOR_MF_VALUE_BY_THROWUP	= 1.0;		--  상태에 따른 모션팩터 보정 MF_THROWUP
STATE_FACTOR_FOR_MF_VALUE_BY_KNOCKDOWN	= 1.0;		--  상태에 따른 모션팩터 보정 MF_KNOCKDOWN
STATE_FACTOR_FOR_MF_VALUE_BY_UPPERED	= 1.0;		--  상태에 따른 모션팩터 보정 MF_UPPERED	

VICTORY_DEFAULT_DELAY					= 3.0;		-- NPC가 승리했을때 콜트에 명시되지 않았을때 기본적으로 대기하는 시간
INVINCIBLE_TIME_REVIVE					= 3.0;
INVINCIBLE_TIME_ENTER_FIELD				= 10.0;
INVINCIBLE_BUFF_ID					= 1900;
INVISIBLE_BUFF_ID					= 902;

NO_WEAPON_DAMAGE_LEFT				= 5;			-- 왼손 무기를 장착하지 않았을 경우의 기본 데미지
NO_WEAPON_DAMAGE_RIGHT				= 5;			-- 오른손 무기를 장착하지 않았을 경우의 기본 데미지

PRE_HIT_CHECK_TIME					= 0.2;			-- 실제 판정 시간보다 먼저 판정하는 시간

-- 일반몹 전투 관련 --
DEF_WAIT_INTERVAL = 1;								-- 전투중 이동시 중간중간 대기하는 시간값

-- 전투유효거리 설정 --								-- 전투시작후 일정거리를 이동하면 전투를 풀고 무적상태로 전투 시작지점으로 복귀한다.
NPC_DEFAULT_COMBAT_RADIUS = 0;

-- 스탯 리젠 --------------------------------------
REGEN_TICK								= 5;		-- 리젠 틱 (초)
HP_REGEN_AMOUNT 						= 25;		-- 틱당 HP 리젠량
HP_REGEN_RATE_IN_COMBAT 				= 0.0625;	-- 전투중 HP 리젠 보정치 (1 = 100%)
EN_REGEN_AMOUNT 						= 75;		-- 틱당 EN 리젠량
EN_REGEN_RATE_IN_COMBAT 				= 0.4;		-- 전투중 EN 리젠 보정치 (1 = 100%)
STA_REGEN_AMOUNT 						= 50;		-- 틱당 STA 리젠량
STA_REGEN_RATE_IN_COMBAT 				= 0.6;		-- 전투중 STA 리젠 보정치 (1 = 100%)
SITTING_REGEN_RATE						= 1.5;		-- 앉아있을 때 리젠량 비율 

-- PVP 관련 --------------
PVP_DURATIONTIME						= 5.0;						-- 플레이어간 피격시 PVP상태 지속시간

-- 마법진 관련 --------------
MAGICAREA_EFFECTION_PERIOD			= 1.0;				-- 마법진 효과 주기

-- 투명화 관련
INVISIBILITY_DETECT_TICK					= 1.0;				-- 투명화 탐지 처리 틱 주기 (second)
INVISIBILITY_DETECT_DISTANCE			= 500; -- 투명화 탐지거리 (cm)

-- 헤이트테이블 관련
HATETABLE_ENTRY_TIMEOUT				= 12;				-- 헤이트 테이블에 들어간 항목이 자동으로 제거되는 시간 (단위: 초)
HATETABLE_ENTRY_PARTY_SCAN_DISTANCE = 9000;				-- 헤이트 테이블에 추가된 플레이어의 파티원 탐색 거리 (cm)
	
-- 포커스 관련 --------------
FOCUS_ADVENT_DURATION_TIME = 20.0; -- 강신 포커스가 최대 얼마나 지속되는가
FOCUS_BERSERK_HIT_COUNT = 8;	-- 몇번을 때려야 버서크에 걸리는가
FOCUS_BERSERK_DURATION_TIME = 30.0;	-- 버서크 포커스가 얼마나 지속되는가
FOCUS_BERSERK_RELAYHIT_TIME = 9.0;	-- 버서크 포커스의 버블이 유지되는 시간
FOCUS_COUNTER_DURATION_TIME = 10.0;	-- 역습 포커스가 얼마나 지속되는가
FOCUS_ENLIGHTEN_DURATION_TIME = 60.0;	-- 각성 포커스가 얼마나 지속되는가
FOCUS_ENLIGHTEN_HIT_COUNT = 3;			-- 몇번을 떄려야 각성에 걸리는가
FOCUS_ENLIGHTEN_MINDSTORM_BUFF_ID = 500;	-- 마인트스톰 버프 아이디
FOCUS_ENLIGHTEN_RELAYHIT_TIME = 5.0;		-- 각성 포커스의 버블이 유지되는 시간

-- 자리비움 관련
AFK_TIMEOUT = 600; -- 자리비움 되는 시간

-- 낙하 데미지 관련 --------------
FALLING_DEBUFF_LV1_ID = 100003;
FALLING_DEBUFF_LV2_ID = 100004;

-- 투기장 관련 --------
ARENA_FIELDGROUP_ID = 50010;				-- 투기장 필드그룹 아이디
ARENA_FIELD_ID = 50011;							-- 투기장 필드 아이디
ARENA_GAME_COUNT = 10.0;					-- 투기장 게임시작 대기시간
ARENA_SCOREBOARD_COUNT= 10.0;			-- 투기장 점수판 대기시간
ARENA_DEATHMATCH_MAX_SCORE = 7;		-- 투기장 데스매치 최대점수
ARENA_DEATHMATCH_REBIRTH_TIME = 30.0;	-- 투기장 데스매치 부활시간

-- NPC 시체소멸 관련 ------------
function MakeMinute(second)
	return second * 60
end

NPC_DECAY_TIME_NOITEM = MakeMinute(2);				-- NPC가 아이템 없을때 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_0 = MakeMinute(5);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_1 = MakeMinute(5);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_2 = MakeMinute(5);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_3 = MakeMinute(5);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_4 = MakeMinute(10);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_5 = MakeMinute(10);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_6 = MakeMinute(10);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_7 = MakeMinute(15);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_8 = MakeMinute(15);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_9 = MakeMinute(15);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
NPC_DECAY_TIME_GRADE_10 = MakeMinute(15);			-- NPC가 아이템이 있을때 등급별 시체가 소멸되는 시간 (단위: 초)
	
--  분노 관련 -----------------
HIT_RAGE_AMOUNT = 10;						-- NPC가 피격을 입을 때 얻을 분노량
CRIHIT_RAGE_AMOUNT = 10;					-- NPC가 치명타를 입을 때 얻을 추가 분노량 (기본 피격분노량에 추가)

-- 길찾기 관련
NPC_FINDPATH_RADIUS_LEVEL1 = 600 			-- 길찾기 레벨1 적용범위
NPC_FINDPATH_RADIUS_LEVEL2 = 1200			-- 길찾기 레벨2 적용범위
NPC_FINDPATH_RADIUS_LEVEL3 = 2000			-- 길찾기 레벨3 적용범위
NPC_FINDPATH_TICK_LEVEL1 = 0.2				-- 길찾기 레벨1 갱신 틱시간
NPC_FINDPATH_TICK_LEVEL2 = 0.4				-- 길찾기 레벨2 갱신 틱시간
NPC_FINDPATH_TICK_LEVEL3 = 0.6				-- 길찾기 레벨3 갱신 틱시간
NPC_FINDPATH_TICK_OTHER = 1.0				-- 길찾기 범위밖 갱신 틱시간
NPC_FINDPATH_MOVESPEED_FACTOR = 400	-- 길찾기 갱신 틱시간 속도 보정치 (틱시간 * 이동속도 / 팩터)

-- 채집활동 소요 시간 ----------------
GATHER_TIME_MINE_TIER_1		= 6.0		-- 채광
GATHER_TIME_MINE_TIER_2		= 6.0
GATHER_TIME_MINE_TIER_3		= 6.0
GATHER_TIME_MINE_TIER_4		= 6.0
GATHER_TIME_MINE_TIER_5		= 6.0
GATHER_TIME_MINE_TIER_6		= 6.0
GATHER_TIME_MINE_TIER_7		= 6.0
GATHER_TIME_MINE_TIER_8		= 6.0
GATHER_TIME_MINE_TIER_9		= 6.0
GATHER_TIME_MINE_TIER_10	= 6.0

GATHER_TIME_HERB_TIER_1		= 6.0		-- 식물
GATHER_TIME_HERB_TIER_2		= 6.0
GATHER_TIME_HERB_TIER_3		= 6.0
GATHER_TIME_HERB_TIER_4		= 6.0
GATHER_TIME_HERB_TIER_5		= 6.0
GATHER_TIME_HERB_TIER_6		= 6.0
GATHER_TIME_HERB_TIER_7		= 6.0
GATHER_TIME_HERB_TIER_8		= 6.0
GATHER_TIME_HERB_TIER_9		= 6.0
GATHER_TIME_HERB_TIER_10	= 6.0

GATHER_TIME_RELIC_TIER_1	= 6.0		-- 발굴
GATHER_TIME_RELIC_TIER_2	= 6.0
GATHER_TIME_RELIC_TIER_3	= 6.0
GATHER_TIME_RELIC_TIER_4	= 6.0
GATHER_TIME_RELIC_TIER_5	= 6.0
GATHER_TIME_RELIC_TIER_6	= 6.0
GATHER_TIME_RELIC_TIER_7	= 6.0
GATHER_TIME_RELIC_TIER_8	= 6.0
GATHER_TIME_RELIC_TIER_9	= 6.0
GATHER_TIME_RELIC_TIER_10	= 6.0

GATHER_TIME_LUMBER_TIER_1	= 6.0		-- 목재 채취
GATHER_TIME_LUMBER_TIER_2	= 6.0
GATHER_TIME_LUMBER_TIER_3	= 6.0
GATHER_TIME_LUMBER_TIER_4	= 6.0
GATHER_TIME_LUMBER_TIER_5	= 6.0
GATHER_TIME_LUMBER_TIER_6	= 6.0
GATHER_TIME_LUMBER_TIER_7	= 6.0
GATHER_TIME_LUMBER_TIER_8	= 6.0
GATHER_TIME_LUMBER_TIER_9	= 6.0
GATHER_TIME_LUMBER_TIER_10	= 6.0

-- 채집 오브젝트 리스폰 시간 ----------------
GATHER_RESPAWN_TIME_MINE	= 300;		-- 5분(1 = 1초)
GATHER_RESPAWN_TIME_HERB	= 300;
GATHER_RESPAWN_TIME_RELIC	= 300;
GATHER_RESPAWN_TIME_LUMBER	= 300;

-- 부활 관련
REBIRTH_VALID_DISTANCE_XY		= 300.0;
REBIRTH_VALID_DISTANCE_Z		= 100.0;
REBIRTH_SOULBINDING_DEBUFF		= 1910;	
REBIRTH_CHECKPOINT_DEBUFF		= 1910;	
REBIRTH_QUESTPVP_DEBUFF			= 1903;
REBIRTH_QUESTPVP_BUFF			= 1904;
REBIRTH_SOULBINDING_RECOVER		= 0.25;
REBIRTH_CHECKPOINT_RECOVER		= 0.25;
REBIRTH_QUESTPVP_RECOVER		= 1.0;
REBIRTH_BATTLEARENA_RECOVER		= 1.0;

-- 최적화 관련
COMMAND_CROWDED_QUEUE_SIZE = 2000;
-- COMMAND_OVERFULL_QUEUE_SIZE = 4000; -- 아직 적용 커멘드가 없어서 막습니다.
SECTOR_CROWDED_LEVEL_CAPACITY = 60 -- 복잡레벨이 되기 위한 필요 플레이어 수
SECTOR_PACKET_IGNORE_EACH_COUNT = 4 -- 복잡레벨당  무시될 패킷 횟수
SECTOR_PACKET_LIMIT_QUEUE_SIZE = 40 -- 섹터당 관리될 플레이어별 카운터 최대 갯수

-- AI Monitor -----------
AIMON_ENABLE = true;
AIMON_AUTO_TARGET = false;
AIMON_SET_FIELDID = 1100001;
AIMON_SET_SPAWNID = 2;
AIMON_UPDATE_INTERVAL = 0.5;


--======================================================
-- 스크립트에서 사용하는 상수
--======================================================
-- Patorl Enum
PATROL_INFINITY		=0;			-- 무한 순찰       
PT_ONCE					=0;
PT_ONCE_RETURN		=1;
PT_LOOP					=2;
PT_LOOP_BACKORDER	=3;

ROAM_DEFAULT_IDLE_TIME = 7.0;	-- 로밍 기본 대기시간

TEST_AI_DEBUG_MESSAGE = false;		-- 길찾기 실패 등의 AI 메세지 클라이언트에 보내주기
TEST_SHOW_CLIENT_NPC_POS = false;
TEST_SHOW_CLIENT_NPC_MOVE_PATH = false;
TEST_SHOW_CLIENT_NPC_PICKING = 0;
TEST_SHOW_NAVIGATION_MESH = false;
TEST_SHOW_CLIENT_COLT = false;
TEST_SHOW_CLIENT_FORMULA_DAMAGE = false;	-- 클라이언트에 피해공식이 보일지 여부
TEST_SHOW_CLIENT_FORMULA_GUARD = false;		-- 클라이언트에 가드공식이 보일지 여부

TEST_MOVE_BY_CONTEXT = false;
TEST_RANDOM_MOVE = false;
ENABLE_COLT_TIMEOUT_CHECKER = false;
SHOW_LUA_ERROR_LOG = false;
SHOW_TALENT_LOG = false;
TEST_MAKE_SOLO_PARTY = false;
TEST_ENABLE_OFFLINE_PARTY_FOR_STAND_ALONE_MODE = false;
DEBUG_CREATE_CONVERT_LUAFILE = false;
TEST_CMD_HANDLER_COMPARER = false;

--======================================================
-- AutoTest에서 사용하는 상수
--======================================================

AUTO_TEST_ACTIVE = false;
AUTO_TEST_TYPE = "none";
AUTO_TEST_LIMIT_FRAME = 0;
AUTO_TEST_REPEAT = 1
AUTO_TEST_TIME = 1000000000;
AUTO_TEST_SPEED = 1;
AUTO_TEST_FIELD_ID = 5000;
AUTO_TEST_NPC_COUNT = 10;

AITEST_TYPE = 0;			-- AITEST__NONE = 0, AITEST_STRESS_COMBAT_ONE_FIELD = 1; AITEST_STRESS_COMBAT_ALL_FIELD = 2;


INTERACT_QUEST_OBJECTIVE_ANI_TIME = 6

LOG_CRT = 0; -- 로그에 남길 CommandResultTable


--======================================================
-- 디버그에 필요한 상수
--======================================================
DEBUG_CONSOLE_SHOW_GAMETICK = true;		-- 콘솔에 게임틱을 출력할 것인가
DEBUG_CONSOLE_GAMETICK_TICK = 60;		-- 몇초에 한번씩 출력할 것인가
DEBUG_GAME_TICK_MOD_SPEED = 1.0;		-- 게임 틱 배속

