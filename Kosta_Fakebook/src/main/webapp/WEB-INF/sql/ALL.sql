select * from member;
select * from hash;


ALTER TABLE friend
	DROP
		CONSTRAINT FK_member_TO_friend
		CASCADE;

ALTER TABLE friend
	DROP
		CONSTRAINT FK_member_TO_friend2
		CASCADE;

ALTER TABLE board
	DROP
		CONSTRAINT FK_member_TO_board
		CASCADE;

ALTER TABLE b_like
	DROP
		CONSTRAINT FK_member_TO_b_like
		CASCADE;

ALTER TABLE b_like
	DROP
		CONSTRAINT FK_board_TO_b_like
		CASCADE;

ALTER TABLE report
	DROP
		CONSTRAINT FK_member_TO_report
		CASCADE;

ALTER TABLE report
	DROP
		CONSTRAINT FK_board_TO_report
		CASCADE;

ALTER TABLE report
	DROP
		CONSTRAINT FK_report_reason_TO_report
		CASCADE;

ALTER TABLE reply
	DROP
		CONSTRAINT FK_board_TO_reply
		CASCADE;

ALTER TABLE reply
	DROP
		CONSTRAINT FK_member_TO_reply
		CASCADE;

ALTER TABLE follow
	DROP
		CONSTRAINT FK_member_TO_follow
		CASCADE;

ALTER TABLE follow
	DROP
		CONSTRAINT FK_member_TO_follow2
		CASCADE;

ALTER TABLE hash
	DROP
		CONSTRAINT FK_board_TO_hash
		CASCADE;

ALTER TABLE reply_like
	DROP
		CONSTRAINT FK_member_TO_reply_like
		CASCADE;

ALTER TABLE reply_like
	DROP
		CONSTRAINT FK_reply_TO_reply_like
		CASCADE;

ALTER TABLE Notification
	DROP
		CONSTRAINT FK_member_TO_Notification
		CASCADE;

ALTER TABLE FriendNoti
	DROP
		CONSTRAINT FK_member_TO_FriendNoti
		CASCADE;

ALTER TABLE FriendNoti
	DROP
		CONSTRAINT FK_member_TO_FriendNoti2
		CASCADE;

ALTER TABLE FriendNoti
	DROP
		CONSTRAINT FK_Notification_TO_FriendNoti
		CASCADE;

ALTER TABLE LikeNoti
	DROP
		CONSTRAINT FK_member_TO_LikeNoti
		CASCADE;

ALTER TABLE LikeNoti
	DROP
		CONSTRAINT FK_board_TO_LikeNoti
		CASCADE;

ALTER TABLE LikeNoti
	DROP
		CONSTRAINT FK_Notification_TO_LikeNoti
		CASCADE;

ALTER TABLE maybe_friend
	DROP
		CONSTRAINT FK_member_TO_maybe_friend
		CASCADE;

ALTER TABLE maybe_friend
	DROP
		CONSTRAINT FK_member_TO_maybe_friend2
		CASCADE;

ALTER TABLE replyNoti
	DROP
		CONSTRAINT FK_member_TO_replyNoti
		CASCADE;

ALTER TABLE replyNoti
	DROP
		CONSTRAINT FK_Notification_TO_replyNoti
		CASCADE;

ALTER TABLE replyNoti
	DROP
		CONSTRAINT FK_reply_TO_replyNoti
		CASCADE;

ALTER TABLE replyNoti
	DROP
		CONSTRAINT FK_board_TO_replyNoti
		CASCADE;

ALTER TABLE member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE board
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE b_like
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE report
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE report_reason
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE reply
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE reply_like
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Notification
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE FriendNoti
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE LikeNoti
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Notice
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_member;

DROP INDEX PK_board;

DROP INDEX PK_b_like;

DROP INDEX PK_report;

DROP INDEX PK_report_reason;

DROP INDEX PK_reply;

DROP INDEX PK_reply_like;

DROP INDEX PK_Notification;

DROP INDEX PK_FriendNoti;

DROP INDEX PK_LikeNoti;

DROP INDEX PK_Notice;

/* ȸ�� */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* ģ�� */
DROP TABLE friend 
	CASCADE CONSTRAINTS;

/* �Խñ� */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* ���ƿ� */
DROP TABLE b_like 
	CASCADE CONSTRAINTS;

/* �Ű� */
DROP TABLE report 
	CASCADE CONSTRAINTS;

/* �Ű����� */
DROP TABLE report_reason 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE reply 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE follow 
	CASCADE CONSTRAINTS;

/* �ؽ��±� */
DROP TABLE hash 
	CASCADE CONSTRAINTS;

/* ������ƿ� */
DROP TABLE reply_like 
	CASCADE CONSTRAINTS;

/* �˸� */
DROP TABLE Notification 
	CASCADE CONSTRAINTS;

/* ģ����û�˸� */
DROP TABLE FriendNoti 
	CASCADE CONSTRAINTS;

/* ���ƿ�˸� */
DROP TABLE LikeNoti 
	CASCADE CONSTRAINTS;

/* �����Խ��� */
DROP TABLE Notice 
	CASCADE CONSTRAINTS;

/* �˼����ִ�ģ�� */
DROP TABLE maybe_friend 
	CASCADE CONSTRAINTS;

/* ��۾˸� */
DROP TABLE replyNoti 
	CASCADE CONSTRAINTS;

/* ȸ�� */
CREATE TABLE member (
	m_num NUMBER(10) NOT NULL, /* ȸ����ȣ */
	email VARCHAR2(100) NOT NULL, /* �̸��� */
	password VARCHAR2(100) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(100) NOT NULL, /* ���� */
	birthday DATE NOT NULL, /* ������� */
	type NUMBER(1) DEFAULT 1, /* ȸ������ */
	yellow_card NUMBER(1), /* ����� */
	picture VARCHAR2(200), /* �����ʻ��� */
	school VARCHAR2(100), /* �����б��̸� */
	born VARCHAR2(50), /* ����� */
	job VARCHAR2(50), /* ���� */
	job_addr  VARCHAR2(200), /* ��������ġ */
	job_position  VARCHAR2(200), /* ���忡����å */
	school_addr  VARCHAR2(200), /* �б�����ġ */
	job_desc VARCHAR2(400), /* ���弳�� */
	school_into  DATE, /* �����б������� */
	school_out  DATE, /* �����б������� */
	school_desc  VARCHAR2(400), /* �����б����� */
	highschool  VARCHAR2(100), /* ���б��̸� */
	highschool_into  DATE, /* ���б������� */
	highschool_out  DATE, /* ���б������� */
	highschool_desc  VARCHAR2(400), /* ���б����� */
	highschoolmajor  VARCHAR2(100) /* ���б����� */
);

COMMENT ON TABLE member IS 'type�� 0�̸� ������, 1�̸� �Ϲ�ȸ��, 2�̸� ��������Ʈ
yellow_card�� �ش� ȸ���� �ۼ��� �Խù��� �Ű��� ����(?)�Ǿ� �����ڿ��� ����� ���� Ƚ���̴�';

COMMENT ON COLUMN member.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN member.email IS '�̸���';

COMMENT ON COLUMN member.password IS '��й�ȣ';

COMMENT ON COLUMN member.name IS '����';

COMMENT ON COLUMN member.birthday IS '�������';

COMMENT ON COLUMN member.type IS 'ȸ������';

COMMENT ON COLUMN member.yellow_card IS '�����';

COMMENT ON COLUMN member.picture IS '�����ʻ���';

COMMENT ON COLUMN member.school IS '�����б��̸�';

COMMENT ON COLUMN member.born IS '�����';

COMMENT ON COLUMN member.job IS '����';

COMMENT ON COLUMN member.job_addr  IS '��������ġ';

COMMENT ON COLUMN member.job_position  IS '���忡����å';

COMMENT ON COLUMN member.school_addr  IS '�б�����ġ';

COMMENT ON COLUMN member.job_desc IS '���弳��';

COMMENT ON COLUMN member.school_into  IS '�����б�������';

COMMENT ON COLUMN member.school_out  IS '�����б�������';

COMMENT ON COLUMN member.school_desc  IS '�����б�����';

COMMENT ON COLUMN member.highschool  IS '���б��̸�';

COMMENT ON COLUMN member.highschool_into  IS '���б�������';

COMMENT ON COLUMN member.highschool_out  IS '���б�������';

COMMENT ON COLUMN member.highschool_desc  IS '���б�����';

COMMENT ON COLUMN member.highschoolmajor  IS '���б�����';

CREATE UNIQUE INDEX PK_member
	ON member (
		m_num ASC
	);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			m_num
		);

/* ģ�� */
CREATE TABLE friend (
	m_num1 NUMBER(10), /* �� */
	m_num2 NUMBER(10) /* �� */
);

COMMENT ON TABLE friend IS 'ģ��';

COMMENT ON COLUMN friend.m_num1 IS '��';

COMMENT ON COLUMN friend.m_num2 IS '��';

/* �Խñ� */
CREATE TABLE board (
	board_num NUMBER(13) NOT NULL, /* �۹�ȣ */
	m_num NUMBER(10), /* ȸ����ȣ */
	reg_date DATE, /* �ð� */
	open_level NUMBER(1), /* �������� */
	content VARCHAR2(2000), /* ���� */
	place VARCHAR2(150), /* ��� */
	picture VARCHAR2(150), /* ���� */
	video VARCHAR2(150) /* ���� */
);

COMMENT ON TABLE board IS '�Խñ�';

COMMENT ON COLUMN board.board_num IS '�۹�ȣ';

COMMENT ON COLUMN board.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN board.reg_date IS '�ð�';

COMMENT ON COLUMN board.open_level IS '��������';

COMMENT ON COLUMN board.content IS '����';

COMMENT ON COLUMN board.place IS '���';

COMMENT ON COLUMN board.picture IS '����';

COMMENT ON COLUMN board.video IS '����';

CREATE UNIQUE INDEX PK_board
	ON board (
		board_num ASC
	);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			board_num
		);

/* ���ƿ� */
CREATE TABLE b_like (
	board_num NUMBER(13) NOT NULL, /* �۹�ȣ */
	m_num NUMBER(10) NOT NULL, /* ȸ����ȣ */
	like_date DATE /* �ð� */
);

COMMENT ON TABLE b_like IS '���ƿ�';

COMMENT ON COLUMN b_like.board_num IS '�۹�ȣ';

COMMENT ON COLUMN b_like.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN b_like.like_date IS '�ð�';

CREATE UNIQUE INDEX PK_b_like
	ON b_like (
		board_num ASC,
		m_num ASC
	);

ALTER TABLE b_like
	ADD
		CONSTRAINT PK_b_like
		PRIMARY KEY (
			board_num,
			m_num
		);

/* �Ű� */
CREATE TABLE report (
	report_num NUMBER(10) NOT NULL, /* �Ű���ȣ */
	m_num NUMBER(10), /* ȸ����ȣ */
	board_num NUMBER(13), /* �۹�ȣ */
	report_code NUMBER(10), /* �Ű��ڵ� */
	report_date DATE, /* �Ű����� */
	reason VARCHAR2(150) /* �Ű����� */
);

COMMENT ON TABLE report IS '�Ű�';

COMMENT ON COLUMN report.report_num IS '�Ű���ȣ';

COMMENT ON COLUMN report.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN report.board_num IS '�۹�ȣ';

COMMENT ON COLUMN report.report_code IS '�Ű��ڵ�';

COMMENT ON COLUMN report.report_date IS '�Ű�����';

COMMENT ON COLUMN report.reason IS '�Ű�����';

CREATE UNIQUE INDEX PK_report
	ON report (
		report_num ASC
	);

ALTER TABLE report
	ADD
		CONSTRAINT PK_report
		PRIMARY KEY (
			report_num
		);

/* �Ű����� */
CREATE TABLE report_reason (
	report_code NUMBER(10) NOT NULL, /* �Ű��ڵ� */
	report_detail VARCHAR2(150) /* �Ű����� */
);

COMMENT ON TABLE report_reason IS '�Ű�����';

COMMENT ON COLUMN report_reason.report_code IS '�Ű��ڵ�';

COMMENT ON COLUMN report_reason.report_detail IS '�Ű�����';

CREATE UNIQUE INDEX PK_report_reason
	ON report_reason (
		report_code ASC
	);

ALTER TABLE report_reason
	ADD
		CONSTRAINT PK_report_reason
		PRIMARY KEY (
			report_code
		);

/* ��� */
CREATE TABLE reply (
	reply_num NUMBER(13) NOT NULL, /* ��۹�ȣ */
	board_num NUMBER(13), /* �۹�ȣ */
	m_num NUMBER(10), /* ����ۼ��� */
	parent_reply NUMBER(13), /* �θ��۹�ȣ */
	r_date DATE, /* �ð� */
	r_content VARCHAR2(1000) /* ��۳��� */
);

COMMENT ON TABLE reply IS '���';

COMMENT ON COLUMN reply.reply_num IS '��۹�ȣ';

COMMENT ON COLUMN reply.board_num IS '�۹�ȣ';

COMMENT ON COLUMN reply.m_num IS '����ۼ���';

COMMENT ON COLUMN reply.parent_reply IS '�θ��۹�ȣ';

COMMENT ON COLUMN reply.r_date IS '�ð�';

COMMENT ON COLUMN reply.r_content IS '��۳���';

CREATE UNIQUE INDEX PK_reply
	ON reply (
		reply_num ASC
	);

ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply
		PRIMARY KEY (
			reply_num
		);

/* ���� */
CREATE TABLE follow (
	follower NUMBER(10), /* ȸ����ȣ */
	following NUMBER(10) /* ȸ����ȣ2 */
);

COMMENT ON TABLE follow IS '����';

COMMENT ON COLUMN follow.follower IS 'ȸ����ȣ';

COMMENT ON COLUMN follow.following IS 'ȸ����ȣ2';

/* �ؽ��±� */
CREATE TABLE hash (
	hash_code VARCHAR2(150), /* �ؽ��ڵ� */
	board_num NUMBER(13) /* �Խñ۹�ȣ */
);

COMMENT ON TABLE hash IS '�ؽ��±�';

COMMENT ON COLUMN hash.hash_code IS '�ؽ��ڵ�';

COMMENT ON COLUMN hash.board_num IS '�Խñ۹�ȣ';

/* ������ƿ� */
CREATE TABLE reply_like (
	reply_num NUMBER(13) NOT NULL, /* ��۹�ȣ */
	m_num NUMBER(10) NOT NULL /* ȸ����ȣ */
);

COMMENT ON TABLE reply_like IS '������ƿ�';

COMMENT ON COLUMN reply_like.reply_num IS '��۹�ȣ';

COMMENT ON COLUMN reply_like.m_num IS 'ȸ����ȣ';

CREATE UNIQUE INDEX PK_reply_like
	ON reply_like (
		reply_num ASC,
		m_num ASC
	);

ALTER TABLE reply_like
	ADD
		CONSTRAINT PK_reply_like
		PRIMARY KEY (
			reply_num,
			m_num
		);

/* �˸� */
CREATE TABLE Notification (
	noti_num NUMBER(10) NOT NULL, /* �˸���ȣ */
	m_num NUMBER(10), /* ȸ����ȣ */
	read number(1) DEFAULT 0, /* Ȯ�ο��� */
	noti_date DATE, /* �߻����� */
	noti_type NUMBER(1) /* �˸����� */
);

COMMENT ON TABLE Notification IS '�˸�';

COMMENT ON COLUMN Notification.noti_num IS '�˸���ȣ';

COMMENT ON COLUMN Notification.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN Notification.read IS 'Ȯ�ο���';

COMMENT ON COLUMN Notification.noti_date IS '�߻�����';

COMMENT ON COLUMN Notification.noti_type IS '�˸�����';

CREATE UNIQUE INDEX PK_Notification
	ON Notification (
		noti_num ASC
	);

ALTER TABLE Notification
	ADD
		CONSTRAINT PK_Notification
		PRIMARY KEY (
			noti_num
		);

/* ģ����û�˸� */
CREATE TABLE FriendNoti (
	noti_num NUMBER(10) NOT NULL, /* �˸���ȣ */
	m_num NUMBER(10), /* ��ȸ����ȣ */
	f_num NUMBER(10), /* ģ��ȸ����ȣ */
	accept NUMBER(1) /* ��û���� */
);

COMMENT ON TABLE FriendNoti IS 'ģ����û�˸�';

COMMENT ON COLUMN FriendNoti.noti_num IS '�˸���ȣ';

COMMENT ON COLUMN FriendNoti.m_num IS '��ȸ����ȣ';

COMMENT ON COLUMN FriendNoti.f_num IS 'ģ��ȸ����ȣ';

COMMENT ON COLUMN FriendNoti.accept IS '��û����';

CREATE UNIQUE INDEX PK_FriendNoti
	ON FriendNoti (
		noti_num ASC
	);

ALTER TABLE FriendNoti
	ADD
		CONSTRAINT PK_FriendNoti
		PRIMARY KEY (
			noti_num
		);

/* ���ƿ�˸� */
CREATE TABLE LikeNoti (
	noti_num NUMBER(10) NOT NULL, /* �� �÷� */
	m_num NUMBER(10) NOT NULL, /* ȸ����ȣ */
	board_num NUMBER(13) NOT NULL /* �Խñ۹�ȣ */
);

COMMENT ON TABLE LikeNoti IS '���ƿ�˸�';

COMMENT ON COLUMN LikeNoti.noti_num IS '�� �÷�';

COMMENT ON COLUMN LikeNoti.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN LikeNoti.board_num IS '�Խñ۹�ȣ';

CREATE UNIQUE INDEX PK_LikeNoti
	ON LikeNoti (
		noti_num ASC
	);

ALTER TABLE LikeNoti
	ADD
		CONSTRAINT PK_LikeNoti
		PRIMARY KEY (
			noti_num
		);

/* �����Խ��� */
CREATE TABLE Notice (
	notice_num NUMBER(10) NOT NULL, /* ������ȣ */
	write_date DATE DEFAULT sysdate NOT NULL, /* �ۼ��� */
	notice_hit NUMBER(10) NOT NULL, /* ��ȸ�� */
	notice_title VARCHAR2(100) NOT NULL, /* ���� */
	notice_contents VARCHAR2(500) NOT NULL /* ���� */
);

COMMENT ON TABLE Notice IS '�����Խ���';

COMMENT ON COLUMN Notice.notice_num IS '������ȣ';

COMMENT ON COLUMN Notice.write_date IS '�ۼ���';

COMMENT ON COLUMN Notice.notice_hit IS '��ȸ��';

COMMENT ON COLUMN Notice.notice_title IS '����';

COMMENT ON COLUMN Notice.notice_contents IS '����';

CREATE UNIQUE INDEX PK_Notice
	ON Notice (
		notice_num ASC
	);

ALTER TABLE Notice
	ADD
		CONSTRAINT PK_Notice
		PRIMARY KEY (
			notice_num
		);

/* �˼����ִ�ģ�� */
CREATE TABLE maybe_friend (
	myId NUMBER(10), /* �����̵� */
	maybe_friendId NUMBER(10), /* �˼����ִ�ģ�����̵� */
	together_friendID varchar2(500), /* �Բ��ƴ�ģ�����̵� */
	score number,, /* ���� */
	reson varchar2(400), /* ���� */
	m_num NUMBER(10) /* ȸ����ȣ */
);

COMMENT ON TABLE maybe_friend IS '�˼����ִ�ģ��';

COMMENT ON COLUMN maybe_friend.myId IS '�����̵�';

COMMENT ON COLUMN maybe_friend.maybe_friendId IS '�˼����ִ�ģ�����̵�';

COMMENT ON COLUMN maybe_friend.together_friendID IS '�Բ��ƴ�ģ�����̵�';

COMMENT ON COLUMN maybe_friend.score IS '����';

COMMENT ON COLUMN maybe_friend.reson IS '����';

COMMENT ON COLUMN maybe_friend.m_num IS 'ȸ����ȣ';

/* ��۾˸� */
CREATE TABLE replyNoti (
	noti_num NUMBER(10), /* �˸���ȣ */
	m_num NUMBER(10), /* ȸ����ȣ */
	reply_num NUMBER(13), /* ��۹�ȣ */
	board_num NUMBER(13) /* �Խ��ǹ�ȣ */
);

COMMENT ON TABLE replyNoti IS '��۾˸�';

COMMENT ON COLUMN replyNoti.noti_num IS '�˸���ȣ';

COMMENT ON COLUMN replyNoti.m_num IS 'ȸ����ȣ';

COMMENT ON COLUMN replyNoti.reply_num IS '��۹�ȣ';

COMMENT ON COLUMN replyNoti.board_num IS '�Խ��ǹ�ȣ';

ALTER TABLE friend
	ADD
		CONSTRAINT FK_member_TO_friend
		FOREIGN KEY (
			m_num1
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE friend
	ADD
		CONSTRAINT FK_member_TO_friend2
		FOREIGN KEY (
			m_num2
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE board
	ADD
		CONSTRAINT FK_member_TO_board
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE b_like
	ADD
		CONSTRAINT FK_member_TO_b_like
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE b_like
	ADD
		CONSTRAINT FK_board_TO_b_like
		FOREIGN KEY (
			board_num
		)
		REFERENCES board (
			board_num
		)
		ON DELETE CASCADE;

ALTER TABLE report
	ADD
		CONSTRAINT FK_member_TO_report
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_board_TO_report
		FOREIGN KEY (
			board_num
		)
		REFERENCES board (
			board_num
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_report_reason_TO_report
		FOREIGN KEY (
			report_code
		)
		REFERENCES report_reason (
			report_code
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_board_TO_reply
		FOREIGN KEY (
			board_num
		)
		REFERENCES board (
			board_num
		)
		ON DELETE CASCADE;

ALTER TABLE reply
	ADD
		CONSTRAINT FK_member_TO_reply
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE follow
	ADD
		CONSTRAINT FK_member_TO_follow
		FOREIGN KEY (
			follower
		)
		REFERENCES member (
			m_num
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_member_TO_follow2
		FOREIGN KEY (
			following
		)
		REFERENCES member (
			m_num
		);

ALTER TABLE hash
	ADD
		CONSTRAINT FK_board_TO_hash
		FOREIGN KEY (
			board_num
		)
		REFERENCES board (
			board_num
		)
		ON DELETE CASCADE;

ALTER TABLE reply_like
	ADD
		CONSTRAINT FK_member_TO_reply_like
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE reply_like
	ADD
		CONSTRAINT FK_reply_TO_reply_like
		FOREIGN KEY (
			reply_num
		)
		REFERENCES reply (
			reply_num
		)
		ON DELETE CASCADE;

ALTER TABLE Notification
	ADD
		CONSTRAINT FK_member_TO_Notification
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE FriendNoti
	ADD
		CONSTRAINT FK_member_TO_FriendNoti
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE FriendNoti
	ADD
		CONSTRAINT FK_member_TO_FriendNoti2
		FOREIGN KEY (
			f_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE FriendNoti
	ADD
		CONSTRAINT FK_Notification_TO_FriendNoti
		FOREIGN KEY (
			noti_num
		)
		REFERENCES Notification (
			noti_num
		)
		ON DELETE CASCADE;

ALTER TABLE LikeNoti
	ADD
		CONSTRAINT FK_member_TO_LikeNoti
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE LikeNoti
	ADD
		CONSTRAINT FK_board_TO_LikeNoti
		FOREIGN KEY (
			board_num
		)
		REFERENCES board (
			board_num
		)
		ON DELETE CASCADE;

ALTER TABLE LikeNoti
	ADD
		CONSTRAINT FK_Notification_TO_LikeNoti
		FOREIGN KEY (
			noti_num
		)
		REFERENCES Notification (
			noti_num
		)
		ON DELETE CASCADE;

ALTER TABLE maybe_friend
	ADD
		CONSTRAINT FK_member_TO_maybe_friend
		FOREIGN KEY (
			myId
		)
		REFERENCES member (
			m_num
		);

ALTER TABLE maybe_friend
	ADD
		CONSTRAINT FK_member_TO_maybe_friend2
		FOREIGN KEY (
			maybe_friendId
		)
		REFERENCES member (
			m_num
		);

ALTER TABLE replyNoti
	ADD
		CONSTRAINT FK_member_TO_replyNoti
		FOREIGN KEY (
			m_num
		)
		REFERENCES member (
			m_num
		)
		ON DELETE CASCADE;

ALTER TABLE replyNoti
	ADD
		CONSTRAINT FK_Notification_TO_replyNoti
		FOREIGN KEY (
			noti_num
		)
		REFERENCES Notification (
			noti_num
		)
		ON DELETE CASCADE;

ALTER TABLE replyNoti
	ADD
		CONSTRAINT FK_reply_TO_replyNoti
		FOREIGN KEY (
			reply_num
		)
		REFERENCES reply (
			reply_num
		)
		ON DELETE CASCADE;

ALTER TABLE replyNoti
	ADD
		CONSTRAINT FK_board_TO_replyNoti
		FOREIGN KEY (
			board_num
		)
		REFERENCES board (
			board_num
		)
		ON DELETE CASCADE;