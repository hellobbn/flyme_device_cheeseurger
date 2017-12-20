.class public Lcom/qti/dpm/DpmNsrmConfigParser;
.super Ljava/lang/Object;
.source "DpmNsrmConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;,
        Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;,
        Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;,
        Lcom/qti/dpm/DpmNsrmConfigParser$Version;
    }
.end annotation


# static fields
.field static final NSRM_APPS_LIST_TABLE_COLUMNS:Ljava/lang/String; = " appName"

.field static final NSRM_APPS_LIST_TABLE_COLUMNS_DEF:Ljava/lang/String; = " appName text"

.field static final NSRM_APPS_LIST_TABLE_NAME:Ljava/lang/String; = "nsrmAppsList"

.field static final NSRM_APP_LEARNED_INFO_TABLE_COLUMNS:Ljava/lang/String; = "appName, uid, currMode, cc1, cc2, npcc2, goodCnt, badCnt, decisionMade, reCountCC2, dmTimestamp, appLearningTime1, appLearningTime2"

.field static final NSRM_APP_LEARNED_INFO_TABLE_COLUMNS_DEF:Ljava/lang/String; = "appName text, uid integer, currMode integer, cc1 integer, cc2 integer, npcc2 integer, goodCnt integer, badCnt integer, decisionMade integer, reCountCC2 integer, dmTimestamp integer, appLearningTime1 integer, appLearningTime2 integer"

.field static final NSRM_APP_LEARNED_INFO_TABLE_NAME:Ljava/lang/String; = "nsrmAppLearnedInfo"

.field static final NSRM_CONFIG_DB_FILE:Ljava/lang/String; = "/data/dpm/nsrm/nsrmConfig.db"

.field static final NSRM_CONFIG_PARAMS_TABLE_COLUMNS:Ljava/lang/String; = "version, topenWwan, topenWlan, tsyncSocketSetup, tsyncWrite, suidMode, opMode, eaqsrdt, goodThr, badThr, tConnect, tDecisionMade, minThr, tMargin, tMinIdle, tQuery, tDmThreshold, recheckThr, dNsrmEnable, nsrmWlanEnable, nsrmWlanMode"

.field static final NSRM_CONFIG_PARAMS_TABLE_COLUMNS_DEF:Ljava/lang/String; = " version text, topenWwan integer, topenWlan integer, tsyncSocketSetup integer, tsyncWrite integer, suidMode integer, opMode integer, eaqsrdt integer, goodThr double, badThr double, tConnect integer, tDecisionMade integer, minThr integer, tMargin integer, tMinIdle integer, tQuery integer, tDmThreshold integer, recheckThr double, dNsrmEnable integer, nsrmWlanEnable integer, nsrmWlanMode integer"

.field static final NSRM_CONFIG_PARAMS_TABLE_NAME:Ljava/lang/String; = "nsrmConfigParams"

.field private static final NSRM_DEFAULT_APP_LEARNING_ENABLED:I = 0x0

.field private static final NSRM_DEFAULT_APP_LIST_QUERY_TIME:I = 0x12c

.field private static final NSRM_DEFAULT_BAD_THR:D = 3.0

.field private static final NSRM_DEFAULT_CONNECT_COUNT_TIME:I = 0x3840

.field private static final NSRM_DEFAULT_DECISION_MADE_THRESHOLD_TIME:I = 0x69780

.field private static final NSRM_DEFAULT_DECISION_MADE_TIME:I = 0x278d00

.field private static final NSRM_DEFAULT_EAQSRDT_TIME:I = 0x3c

.field private static final NSRM_DEFAULT_GOOD_THR:D = 1.0

.field private static final NSRM_DEFAULT_MARGIN_TIME:I = 0x3c

.field private static final NSRM_DEFAULT_MIN_IDLE_TIME:I = 0x258

.field private static final NSRM_DEFAULT_MIN_THR:I = 0x5

.field private static final NSRM_DEFAULT_OP_MODE:I = 0x0

.field private static final NSRM_DEFAULT_RECHECK_THR:D = 1.1

.field private static final NSRM_DEFAULT_TOPEN_TIME:I = 0x1e

.field private static final NSRM_DEFAULT_TSYNC_TIME:I = 0x4b0

.field private static final NSRM_DEFAULT_UID_MODE:I = 0x0

.field private static final NSRM_DEFAULT_WLAN_ENABLED:I = 0x1

.field private static final NSRM_DEFAULT_WLAN_MODE:I = 0x1

.field private static final NSRM_DEFAULT_WLAN_TOPEN_TIME:I = 0xa

.field private static final NSRM_LOWER_LIMIT_APP_LIST_QUERY_TIME:I = 0x3c

.field private static final NSRM_LOWER_LIMIT_BAD_THR:D = 1.0

.field private static final NSRM_LOWER_LIMIT_CONNECT_COUNT_TIME:I = 0x1

.field private static final NSRM_LOWER_LIMIT_DECISION_MADE_THRESHOLD_TIME:I = 0x15180

.field private static final NSRM_LOWER_LIMIT_DECISION_MADE_TIME:I = 0x15180

.field private static final NSRM_LOWER_LIMIT_MARGIN_TIME:I = 0x1

.field private static final NSRM_LOWER_LIMIT_MIN_IDLE_TIME:I = 0x1

.field private static final NSRM_LOWER_LIMIT_MIN_THR:I = 0x0

.field private static final NSRM_LOWER_LIMIT_RECHECK_THR:D = 1.0

.field private static final NSRM_MAX_MCC_MNC_ENTRIES:I = 0xa

.field private static final NSRM_MAX_NUM_APPS:I = 0x400

.field private static final NSRM_MAX_PORT_NTO_ENTRIES:I = 0x32

.field private static final NSRM_MAX_UNSIGNED_SHORT_NUM:I = 0xffff

.field static final NSRM_NTO_PORTS_TABLE_COLUMNS:Ljava/lang/String; = "mccmnc, port, nto"

.field static final NSRM_NTO_PORTS_TABLE_COLUMNS_DEF:Ljava/lang/String; = " mccmnc text, port integer, nto integer"

.field static final NSRM_NTO_PORTS_TABLE_NAME:Ljava/lang/String; = "nsrmNTOs"

.field private static final NSRM_OP_MODE_EXCLUSION:I = 0x1

.field private static final NSRM_OP_MODE_INCLUSION:I = 0x0

.field private static final NSRM_UID_MODE_AGGRESSIVE:I = 0x1

.field private static final NSRM_UID_MODE_CONSERVATIVE:I = 0x0

.field private static final NSRM_UPPER_LIMIT_APP_LIST_QUERY_TIME:I = 0xe10

.field private static final NSRM_UPPER_LIMIT_BAD_THR:D = 10.0

.field private static final NSRM_UPPER_LIMIT_CONNECT_COUNT_TIME:I = 0x15180

.field private static final NSRM_UPPER_LIMIT_DECISION_MADE_THRESHOLD_TIME:I = 0x1e13380

.field private static final NSRM_UPPER_LIMIT_DECISION_MADE_TIME:I = 0x1e13380

.field private static final NSRM_UPPER_LIMIT_GOOD_THR:D = 10.0

.field private static final NSRM_UPPER_LIMIT_MARGIN_TIME:I = 0x708

.field private static final NSRM_UPPER_LIMIT_MIN_IDLE_TIME:I = 0xe10

.field private static final NSRM_UPPER_LIMIT_MIN_THR:I = 0x64

.field private static final NSRM_UPPER_LIMIT_NTO_TIME:I = 0x15180

.field private static final NSRM_UPPER_LIMIT_RECHECK_THR:D = 10.0

.field private static final NSRM_UPPER_LIMIT_TOPEN_TIME:I = 0x15180

.field private static final NSRM_UPPER_LIMIT_TSYNC_TIME:I = 0x15180

.field static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM:PLCY"

.field private static final TAG_NSRM:Ljava/lang/String; = "Nsrm"

.field private static final TAG_ROOT:Ljava/lang/String; = "NsrmPolicy"

.field private static final TAG_VERSION:Ljava/lang/String; = "Version"

.field private static final nsrmConfigFbFileLoc:Ljava/lang/String; = "/system/etc/dpm/nsrm/NsrmConfiguration.xml"

.field private static final nsrmConfigFileLoc:Ljava/lang/String; = "/data/dpm/nsrm/NsrmConfiguration.xml"


# instance fields
.field ismDbOpen:Z

.field mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field nsrmNode:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    .line 410
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mContext:Landroid/content/Context;

    .line 411
    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    .line 412
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmConfigParser;->createNsrmConfigDb()V

    .line 409
    return-void
.end method

.method private appExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    const/4 v1, -0x1

    .line 248
    .local v1, "count":I
    const/4 v0, 0x0

    .line 250
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "SELECT COUNT(*) FROM nsrmAppLearnedInfo WHERE appName = ?"

    .line 254
    .local v2, "query":Ljava/lang/String;
    iget-object v5, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 255
    return v4

    .line 259
    :cond_0
    iget-object v5, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 260
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 263
    :cond_1
    if-lez v1, :cond_3

    .line 266
    :goto_0
    if-eqz v0, :cond_2

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_2
    return v3

    :cond_3
    move v3, v4

    goto :goto_0

    .line 265
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 266
    if-eqz v0, :cond_4

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_4
    throw v3
.end method

.method private createNsrmConfigDb()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "/data/dpm/nsrm/nsrmConfig.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 446
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmConfigParams (id INTEGER PRIMARY KEY,  version text, topenWwan integer, topenWlan integer, tsyncSocketSetup integer, tsyncWrite integer, suidMode integer, opMode integer, eaqsrdt integer, goodThr double, badThr double, tConnect integer, tDecisionMade integer, minThr integer, tMargin integer, tMinIdle integer, tQuery integer, tDmThreshold integer, recheckThr double, dNsrmEnable integer, nsrmWlanEnable integer, nsrmWlanMode integer );"

    .line 448
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmAppsList (id INTEGER PRIMARY KEY,  appName text );"

    .line 451
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmNTOs (id INTEGER PRIMARY KEY,  mccmnc text, port integer, nto integer );"

    .line 454
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS nsrmAppLearnedInfo (id INTEGER PRIMARY KEY, appName text, uid integer, currMode integer, cc1 integer, cc2 integer, npcc2 integer, goodCnt integer, badCnt integer, decisionMade integer, reCountCC2 integer, dmTimestamp integer, appLearningTime1 integer, appLearningTime2 integer );"

    .line 457
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1    # "sql":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    .line 443
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t create nsrmConfigDb ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iput-boolean v6, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    goto :goto_0
.end method

.method private min(II)I
    .locals 0
    .param p1, "num1"    # I
    .param p2, "num2"    # I

    .prologue
    .line 1291
    if-gt p1, p2, :cond_0

    .end local p1    # "num1":I
    :goto_0
    return p1

    .restart local p1    # "num1":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private parseNsrmConfig(Lorg/w3c/dom/Element;Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I
    .locals 43
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "configData"    # Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;

    .prologue
    .line 543
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "parseNsrmConfig"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    .line 547
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string/jumbo v2, "GateOpenWwanTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 551
    .local v39, "tOpenWwanTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 555
    const/4 v2, 0x0

    const v4, 0x15180

    .line 554
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 556
    .local v31, "ret":I
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_0

    .line 558
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateOpenWwanTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return v31

    .line 561
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenWwanTime:I

    .line 570
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tOpenWwanTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenWwanTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string/jumbo v2, "GateOpenWlanTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    .line 574
    .local v38, "tOpenWlanTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 576
    if-eqz v3, :cond_4

    .line 578
    const/4 v2, 0x0

    const v4, 0x15180

    .line 577
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 579
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_3

    .line 581
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateOpenWlanTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return v31

    .line 563
    .end local v31    # "ret":I
    .end local v38    # "tOpenWlanTime":Lorg/w3c/dom/NodeList;
    :cond_1
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateOpenWwanTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v2, -0x3

    return v2

    .line 567
    .end local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateOpenWwanTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v2, -0x3

    return v2

    .line 584
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v31    # "ret":I
    .restart local v38    # "tOpenWlanTime":Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenWlanTime:I

    .line 593
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tOpenWlanTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenWlanTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string/jumbo v2, "GateSyncSocketSetupTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 597
    .local v41, "tsyncSocketSetupTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 598
    const/4 v2, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 599
    if-eqz v3, :cond_7

    .line 601
    const/4 v2, 0x0

    const v4, 0x15180

    .line 600
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 602
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_6

    .line 604
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateSyncSocketSetupTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return v31

    .line 586
    .end local v41    # "tsyncSocketSetupTime":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateOpenWlanTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v2, -0x3

    return v2

    .line 590
    :cond_5
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateOpenWlanTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v2, -0x3

    return v2

    .line 607
    .restart local v41    # "tsyncSocketSetupTime":Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    .line 616
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GateSyncSocketSetupTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string/jumbo v2, "GateSyncSocketWriteTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v42

    .line 620
    .local v42, "tsyncSocketWriteTime":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 621
    const/4 v2, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 622
    if-eqz v3, :cond_a

    .line 624
    const/4 v2, 0x0

    const v4, 0x15180

    .line 623
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 625
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_9

    .line 627
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid GateSyncSocketWriteTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return v31

    .line 609
    .end local v42    # "tsyncSocketWriteTime":Lorg/w3c/dom/NodeList;
    :cond_7
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateSyncSocketSetupTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v2, -0x3

    return v2

    .line 613
    :cond_8
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateSyncSocketSetupTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v2, -0x3

    return v2

    .line 630
    .restart local v42    # "tsyncSocketWriteTime":Lorg/w3c/dom/NodeList;
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    .line 639
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GateSyncSocketWriteTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v2, "EAQSRDT"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 643
    .local v14, "eaqsrdt":Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 644
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 645
    if-eqz v3, :cond_d

    .line 647
    const/4 v2, 0x0

    const v4, 0x15180

    .line 646
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 648
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_c

    .line 650
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid EAQSRDT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return v31

    .line 632
    .end local v14    # "eaqsrdt":Lorg/w3c/dom/NodeList;
    :cond_a
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No GateSyncSocketWriteTime value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v2, -0x3

    return v2

    .line 636
    :cond_b
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many GateSyncSocketWriteTime tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v2, -0x3

    return v2

    .line 653
    .restart local v14    # "eaqsrdt":Lorg/w3c/dom/NodeList;
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    .line 662
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eaqsrdt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string/jumbo v2, "SharedUIDMode"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 666
    .local v32, "sharedUidMode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 667
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 668
    if-eqz v3, :cond_11

    .line 669
    const-string/jumbo v2, "Conservative"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 670
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    .line 686
    :goto_0
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suidMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v2, "AppList"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 690
    .local v8, "appList":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    .line 691
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 692
    .local v11, "attrs":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    .line 693
    const-string/jumbo v2, "Type"

    invoke-interface {v11, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 694
    .local v26, "opMode":Lorg/w3c/dom/Node;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 695
    if-eqz v3, :cond_15

    .line 696
    const-string/jumbo v2, "EXCLUSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 697
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    .line 712
    :goto_1
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "opMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "AppName"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 715
    .local v10, "appNames":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/16 v4, 0x400

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_19

    .line 716
    move/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 717
    .local v9, "appName":Ljava/lang/String;
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    .line 718
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->apps:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 655
    .end local v8    # "appList":Lorg/w3c/dom/NodeList;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .end local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "i":I
    .end local v26    # "opMode":Lorg/w3c/dom/Node;
    .end local v32    # "sharedUidMode":Lorg/w3c/dom/NodeList;
    :cond_d
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No EAQSRDT value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v2, -0x3

    return v2

    .line 659
    :cond_e
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many EAQSRDT tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v2, -0x3

    return v2

    .line 671
    .restart local v32    # "sharedUidMode":Lorg/w3c/dom/NodeList;
    :cond_f
    const-string/jumbo v2, "Aggressive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 672
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    goto/16 :goto_0

    .line 674
    :cond_10
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid UID Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "Invalid SharedUIDMode value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const/4 v2, -0x3

    return v2

    .line 679
    :cond_11
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No SharedUIDMode value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v2, -0x3

    return v2

    .line 683
    :cond_12
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many SharedUIDMode tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v2, -0x3

    return v2

    .line 698
    .restart local v8    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v26    # "opMode":Lorg/w3c/dom/Node;
    :cond_13
    const-string/jumbo v2, "INCLUSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 699
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    goto/16 :goto_1

    .line 701
    :cond_14
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid OP Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v2, -0x3

    return v2

    .line 705
    :cond_15
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No AppList Type Attribute value"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v2, -0x3

    return v2

    .line 709
    .end local v26    # "opMode":Lorg/w3c/dom/Node;
    :cond_16
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many AppList Type Attribute tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v2, -0x3

    return v2

    .line 721
    .restart local v9    # "appName":Ljava/lang/String;
    .restart local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .restart local v16    # "i":I
    .restart local v26    # "opMode":Lorg/w3c/dom/Node;
    :cond_17
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "ignoring this node appName is null or empty"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 726
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .end local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v16    # "i":I
    .end local v26    # "opMode":Lorg/w3c/dom/Node;
    :cond_18
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Many AppList tag"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v2, -0x3

    return v2

    .line 731
    .restart local v10    # "appNames":Lorg/w3c/dom/NodeList;
    .restart local v11    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v16    # "i":I
    .restart local v26    # "opMode":Lorg/w3c/dom/Node;
    :cond_19
    const-string/jumbo v2, "MCC_MNC"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 732
    .local v20, "mccMncList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/16 v4, 0xa

    if-le v2, v4, :cond_1a

    .line 733
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too many MCC_MNC entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v2, -0x3

    return v2

    .line 736
    :cond_1a
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_21

    .line 737
    const/16 v16, 0x0

    :goto_4
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_21

    .line 739
    new-instance v22, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;-><init>(Lcom/qti/dpm/DpmNsrmConfigParser;)V

    .line 741
    .local v22, "newNode":Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 742
    const-string/jumbo v2, "value"

    invoke-interface {v11, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 743
    .local v19, "mccMnc":Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-set1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 746
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Wlan"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 747
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateInteger(Ljava/lang/String;)I

    move-result v31

    .line 748
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_1b

    .line 749
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid MCCMNC value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v2, -0x3

    return v2

    .line 752
    :cond_1b
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1c

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1c

    .line 753
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MCCMNC value exceeds max limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v2, -0x3

    return v2

    .line 759
    :cond_1c
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "port"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 760
    .local v28, "portList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_1d

    .line 761
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too many port nto entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v2, -0x3

    return v2

    .line 764
    :cond_1d
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 765
    .local v18, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_5
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_20

    .line 766
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v29

    .line 767
    .local v29, "portNto":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v2, "value"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 768
    .local v27, "port":Lorg/w3c/dom/Node;
    const-string/jumbo v2, "NTO"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 770
    .local v25, "nto":Lorg/w3c/dom/Node;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0xffff

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 771
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_1e

    .line 772
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid PORT number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return v31

    .line 776
    :cond_1e
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x15180

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 777
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_1f

    .line 778
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid NTO value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return v31

    .line 781
    :cond_1f
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 783
    .end local v25    # "nto":Lorg/w3c/dom/Node;
    .end local v27    # "port":Lorg/w3c/dom/Node;
    .end local v29    # "portNto":Lorg/w3c/dom/NamedNodeMap;
    :cond_20
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-set0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 784
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    const-string/jumbo v4, "DPM:NSRM:PLCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MCCMNC = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string/jumbo v4, "DPM:NSRM:PLCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PORT NTO map = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 791
    .end local v17    # "j":I
    .end local v18    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v19    # "mccMnc":Lorg/w3c/dom/Node;
    .end local v22    # "newNode":Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;
    .end local v28    # "portList":Lorg/w3c/dom/NodeList;
    :cond_21
    const-string/jumbo v2, "GoodThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 792
    .local v15, "goodThr":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_24

    .line 793
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 794
    if-eqz v3, :cond_23

    .line 795
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateDoubleByRange(Ljava/lang/String;DD)I

    move-result v31

    .line 796
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_22

    .line 797
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    .line 798
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: goodThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :goto_6
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "goodThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string/jumbo v2, "BadThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 816
    .local v12, "badThr":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    .line 817
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 818
    if-eqz v3, :cond_26

    .line 819
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateDoubleByRange(Ljava/lang/String;DD)I

    move-result v31

    .line 820
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_25

    .line 821
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    .line 822
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: badThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_7
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "badThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string/jumbo v2, "TConnect"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 840
    .local v33, "tConnect":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    .line 841
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 842
    if-eqz v3, :cond_29

    .line 843
    const/4 v2, 0x1

    const v4, 0x15180

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 844
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_28

    .line 845
    const/16 v2, 0x3840

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    .line 846
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: tConnect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_8
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tConnect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string/jumbo v2, "TDecisionMade"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 865
    .local v34, "tDecisionMade":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    .line 866
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 867
    if-eqz v3, :cond_2c

    .line 868
    const v2, 0x15180

    .line 869
    const v4, 0x1e13380

    .line 868
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 870
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_2b

    .line 871
    const v2, 0x278d00

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    .line 872
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: tDecisionMade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :goto_9
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tDecisionMade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string/jumbo v2, "MinThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 890
    .local v21, "minThr":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 891
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 892
    if-eqz v3, :cond_2f

    .line 893
    const/4 v2, 0x0

    const/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 894
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_2e

    .line 895
    const/4 v2, 0x5

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    .line 899
    :goto_a
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minThr nodeValue= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minThr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string/jumbo v2, "TMargin"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 914
    .local v36, "tMargin":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_33

    .line 915
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 916
    if-eqz v3, :cond_32

    .line 917
    const/4 v2, 0x1

    const/16 v4, 0x708

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 918
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_31

    .line 919
    const/16 v2, 0x3c

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMargin:I

    .line 923
    :goto_b
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tMargin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string/jumbo v2, "TMinIdle"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 937
    .local v37, "tMinIdle":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    .line 938
    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 939
    if-eqz v3, :cond_35

    .line 940
    const/4 v2, 0x1

    const/16 v4, 0xe10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 941
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_34

    .line 942
    const/16 v2, 0x258

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMinIdle:I

    .line 946
    :goto_c
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tMinIdle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string/jumbo v2, "TQuery"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v40

    .line 960
    .local v40, "tQuery":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_39

    .line 961
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 962
    if-eqz v3, :cond_38

    .line 963
    const/16 v2, 0x3c

    const/16 v4, 0xe10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 964
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_37

    .line 965
    const/16 v2, 0x12c

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tQuery:I

    .line 969
    :goto_d
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tQuery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string/jumbo v2, "TDmThreshold"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 983
    .local v35, "tDmThreshold":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    .line 984
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 985
    if-eqz v3, :cond_3b

    .line 986
    const v2, 0x15180

    .line 987
    const v4, 0x1e13380

    .line 986
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 988
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_3a

    .line 989
    const v2, 0x69780

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    .line 990
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not in valid range: tDmThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :goto_e
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tDmThreshold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v2, "RecheckThr"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 1008
    .local v30, "recheckThr":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    .line 1009
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1010
    if-eqz v3, :cond_3e

    .line 1011
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateDoubleByRange(Ljava/lang/String;DD)I

    move-result v31

    .line 1012
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_3d

    .line 1013
    const-wide v4, 0x3ff199999999999aL    # 1.1

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->recheckThr:D

    .line 1017
    :goto_f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recheckThr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v2, "DNsrmEnable"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1031
    .local v13, "dNsrmEnable":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_42

    .line 1032
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1033
    if-eqz v3, :cond_41

    .line 1034
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 1035
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_40

    .line 1036
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->dNsrmEnable:I

    .line 1040
    :goto_10
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dNsrmEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v2, "NsrmWlanEnable"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1054
    .local v23, "nsrmWlanEnable":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_45

    .line 1055
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1056
    if-eqz v3, :cond_44

    .line 1057
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 1058
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_43

    .line 1059
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->nsrmWlanEnable:I

    .line 1063
    :goto_11
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nsrmWlanEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v2, "NsrmWlanMode"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 1077
    .local v24, "nsrmWlanMode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_48

    .line 1078
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1079
    if-eqz v3, :cond_47

    .line 1080
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validateIntegerByRange(Ljava/lang/String;II)I

    move-result v31

    .line 1081
    const/16 v2, 0x3e8

    move/from16 v0, v31

    if-eq v0, v2, :cond_46

    .line 1082
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->nsrmWlanMode:I

    .line 1086
    :goto_12
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nsrmWlanMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateNsrmDb(Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I

    move-result v2

    return v2

    .line 800
    .end local v12    # "badThr":Lorg/w3c/dom/NodeList;
    .end local v13    # "dNsrmEnable":Lorg/w3c/dom/NodeList;
    .end local v21    # "minThr":Lorg/w3c/dom/NodeList;
    .end local v23    # "nsrmWlanEnable":Lorg/w3c/dom/NodeList;
    .end local v24    # "nsrmWlanMode":Lorg/w3c/dom/NodeList;
    .end local v30    # "recheckThr":Lorg/w3c/dom/NodeList;
    .end local v33    # "tConnect":Lorg/w3c/dom/NodeList;
    .end local v34    # "tDecisionMade":Lorg/w3c/dom/NodeList;
    .end local v35    # "tDmThreshold":Lorg/w3c/dom/NodeList;
    .end local v36    # "tMargin":Lorg/w3c/dom/NodeList;
    .end local v37    # "tMinIdle":Lorg/w3c/dom/NodeList;
    .end local v40    # "tQuery":Lorg/w3c/dom/NodeList;
    :cond_22
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    goto/16 :goto_6

    .line 805
    :cond_23
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No goodThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v2, -0x3

    return v2

    .line 810
    :cond_24
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many goodThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const/4 v2, -0x3

    return v2

    .line 824
    .restart local v12    # "badThr":Lorg/w3c/dom/NodeList;
    :cond_25
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    goto/16 :goto_7

    .line 829
    :cond_26
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No badThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v2, -0x3

    return v2

    .line 834
    :cond_27
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many badThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v2, -0x3

    return v2

    .line 848
    .restart local v33    # "tConnect":Lorg/w3c/dom/NodeList;
    :cond_28
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    goto/16 :goto_8

    .line 854
    :cond_29
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tConnect found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v2, -0x3

    return v2

    .line 859
    :cond_2a
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tConnect"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/4 v2, -0x3

    return v2

    .line 874
    .restart local v34    # "tDecisionMade":Lorg/w3c/dom/NodeList;
    :cond_2b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    goto/16 :goto_9

    .line 879
    :cond_2c
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tDecisionMade found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/4 v2, -0x3

    return v2

    .line 884
    :cond_2d
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tDecisionMade"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const/4 v2, -0x3

    return v2

    .line 897
    .restart local v21    # "minThr":Lorg/w3c/dom/NodeList;
    :cond_2e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    goto/16 :goto_a

    .line 903
    :cond_2f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No minThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v2, -0x3

    return v2

    .line 908
    :cond_30
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many minThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v2, -0x3

    return v2

    .line 921
    .restart local v36    # "tMargin":Lorg/w3c/dom/NodeList;
    :cond_31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMargin:I

    goto/16 :goto_b

    .line 926
    :cond_32
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tMargin found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const/4 v2, -0x3

    return v2

    .line 931
    :cond_33
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tMargin"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const/4 v2, -0x3

    return v2

    .line 944
    .restart local v37    # "tMinIdle":Lorg/w3c/dom/NodeList;
    :cond_34
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMinIdle:I

    goto/16 :goto_c

    .line 949
    :cond_35
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tMinIdle found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v2, -0x3

    return v2

    .line 954
    :cond_36
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tMinIdle"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v2, -0x3

    return v2

    .line 967
    .restart local v40    # "tQuery":Lorg/w3c/dom/NodeList;
    :cond_37
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tQuery:I

    goto/16 :goto_d

    .line 972
    :cond_38
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tQuery found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v2, -0x3

    return v2

    .line 977
    :cond_39
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tQuery"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v2, -0x3

    return v2

    .line 992
    .restart local v35    # "tDmThreshold":Lorg/w3c/dom/NodeList;
    :cond_3a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    goto/16 :goto_e

    .line 997
    :cond_3b
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No tDmThreshold found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v2, -0x3

    return v2

    .line 1002
    :cond_3c
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many tDmThreshold"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v2, -0x3

    return v2

    .line 1015
    .restart local v30    # "recheckThr":Lorg/w3c/dom/NodeList;
    :cond_3d
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->recheckThr:D

    goto/16 :goto_f

    .line 1020
    :cond_3e
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No recheckThr found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const/4 v2, -0x3

    return v2

    .line 1025
    :cond_3f
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many recheckThr"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const/4 v2, -0x3

    return v2

    .line 1038
    .restart local v13    # "dNsrmEnable":Lorg/w3c/dom/NodeList;
    :cond_40
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->dNsrmEnable:I

    goto/16 :goto_10

    .line 1043
    :cond_41
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No dNsrmEnable found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const/4 v2, -0x3

    return v2

    .line 1048
    :cond_42
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many dNsrmEnable"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const/4 v2, -0x3

    return v2

    .line 1061
    .restart local v23    # "nsrmWlanEnable":Lorg/w3c/dom/NodeList;
    :cond_43
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->nsrmWlanEnable:I

    goto/16 :goto_11

    .line 1066
    :cond_44
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No nsrmWlanEnable found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const/4 v2, -0x3

    return v2

    .line 1071
    :cond_45
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many nsrmWlanEnable"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/4 v2, -0x3

    return v2

    .line 1084
    .restart local v24    # "nsrmWlanMode":Lorg/w3c/dom/NodeList;
    :cond_46
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->nsrmWlanMode:I

    goto/16 :goto_12

    .line 1089
    :cond_47
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No nsrmWlanMode found"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/4 v2, -0x3

    return v2

    .line 1094
    :cond_48
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "No/Too many nsrmWlanMode"

    invoke-static {v2, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v2, -0x3

    return v2
.end method

.method private parseNsrmFile(Ljava/lang/String;)I
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1210
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "parseNsrmFile"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :try_start_0
    new-instance v1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13}, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;-><init>(Lcom/qti/dpm/DpmNsrmConfigParser;Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)V

    .line 1214
    .local v1, "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 1215
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1216
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1218
    .local v4, "doc":Lorg/w3c/dom/Document;
    if-nez v4, :cond_0

    .line 1219
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "Malformed NSRM xml file"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const/4 v13, -0x3

    return v13

    .line 1224
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/qti/dpm/DpmNsrmConfigParser;->validatePolicyTree(Lorg/w3c/dom/Document;)I

    move-result v10

    .line 1225
    .local v10, "ret":I
    const/16 v13, 0x3e8

    if-eq v13, v10, :cond_1

    .line 1226
    return v10

    .line 1229
    :cond_1
    const-string/jumbo v13, "Nsrm"

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1230
    .local v9, "nsrmNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_5

    .line 1232
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v8, v13, :cond_4

    .line 1234
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    .line 1235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    const-string/jumbo v14, "Version"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1236
    .local v12, "versionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1239
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1244
    .local v11, "version":Ljava/lang/String;
    invoke-static {v11}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->matchVersion(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1246
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1247
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parsing Nsrm node "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1248
    const-string/jumbo v15, ", version "

    .line 1247
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1248
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v15

    .line 1247
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1246
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1}, Lcom/qti/dpm/DpmNsrmConfigParser;->parseNsrmConfig(Lorg/w3c/dom/Element;Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I

    move-result v13

    return v13

    .line 1253
    :cond_2
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1254
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1255
    const-string/jumbo v15, " from Nsrm node "

    .line 1254
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1256
    const-string/jumbo v15, " does not match software version "

    .line 1254
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1257
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v15

    .line 1254
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1253
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    .end local v11    # "version":Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1260
    :cond_3
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1261
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No/Many version tag from Nsrm node "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1260
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1272
    .end local v1    # "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v9    # "nsrmNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "ret":I
    .end local v12    # "versionNode":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v7

    .line 1273
    .local v7, "e":Lorg/xml/sax/SAXParseException;
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "SAXParseException..."

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v7}, Lorg/xml/sax/SAXParseException;->printStackTrace()V

    .line 1275
    const/4 v13, -0x3

    return v13

    .line 1264
    .end local v7    # "e":Lorg/xml/sax/SAXParseException;
    .restart local v1    # "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "i":I
    .restart local v9    # "nsrmNodes":Lorg/w3c/dom/NodeList;
    .restart local v10    # "ret":I
    :cond_4
    :try_start_1
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    .line 1265
    const-string/jumbo v14, "No version match from any Nsrm Node. Configuration file is not parsed."

    .line 1264
    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const/4 v13, -0x8

    return v13

    .line 1269
    .end local v8    # "i":I
    :cond_5
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "No Nsrm tag"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1270
    const/4 v13, -0x3

    return v13

    .line 1280
    .end local v1    # "configData":Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "nsrmNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "ret":I
    :catch_1
    move-exception v5

    .line 1281
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "NSRM Parser failed"

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1283
    const/4 v13, -0x1

    return v13

    .line 1276
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 1277
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v13, "DPM:NSRM:PLCY"

    const-string/jumbo v14, "NumberFormatException..."

    invoke-static {v13, v14}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1279
    const/4 v13, -0x3

    return v13
.end method

.method private updateDefaultConfigFile(Ljava/lang/String;)V
    .locals 17
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 490
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 491
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 492
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/system/etc/dpm/nsrm/NsrmConfiguration.xml"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 493
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 495
    .local v11, "root":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    if-eqz v14, :cond_1

    .line 498
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 499
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 515
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 516
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "ParserConfigurationException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 486
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    return-void

    .line 502
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "root":Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmNsrmConfigParser;->nsrmNode:Lorg/w3c/dom/Element;

    const/4 v15, 0x1

    invoke-interface {v4, v14, v15}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 503
    .local v1, "copied":Lorg/w3c/dom/Node;
    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 505
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    .line 506
    .local v13, "tf":Ljavax/xml/transform/Transformer;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 507
    .local v5, "ds":Ljavax/xml/transform/dom/DOMSource;
    new-instance v12, Ljavax/xml/transform/stream/StreamResult;

    const-string/jumbo v14, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-direct {v12, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 508
    .local v12, "sr":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v13, v5, v12}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 509
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Restore "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 518
    .end local v1    # "copied":Lorg/w3c/dom/Node;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "ds":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    .end local v12    # "sr":Ljavax/xml/transform/stream/StreamResult;
    .end local v13    # "tf":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v10

    .line 519
    .local v10, "e":Lorg/xml/sax/SAXException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "SAXException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 513
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "root":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_2
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "nsrmNode is null. Not restoring default file"

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 521
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    .line 522
    .local v8, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "TransformerConfigurationException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 527
    .end local v8    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_3
    move-exception v6

    .line 528
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "updateDefaultConfigFile failed"

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 524
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 525
    .local v9, "e":Ljavax/xml/transform/TransformerException;
    const-string/jumbo v14, "DPM:NSRM:PLCY"

    const-string/jumbo v15, "TransformerException..."

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private updateNsrmDb(Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;)I
    .locals 13
    .param p1, "data"    # Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;

    .prologue
    const/4 v12, -0x1

    .line 274
    :try_start_0
    iget-boolean v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    if-eqz v8, :cond_2

    .line 276
    const-string/jumbo v7, "DROP TABLE IF EXISTS nsrmConfigParams"

    .line 277
    .local v7, "sql":Ljava/lang/String;
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v7, "CREATE TABLE IF NOT EXISTS nsrmConfigParams (id INTEGER PRIMARY KEY,  version text, topenWwan integer, topenWlan integer, tsyncSocketSetup integer, tsyncWrite integer, suidMode integer, opMode integer, eaqsrdt integer, goodThr double, badThr double, tConnect integer, tDecisionMade integer, minThr integer, tMargin integer, tMinIdle integer, tQuery integer, tDmThreshold integer, recheckThr double, dNsrmEnable integer, nsrmWlanEnable integer, nsrmWlanMode integer );"

    .line 282
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INSERT INTO nsrmConfigParams(version, topenWwan, topenWlan, tsyncSocketSetup, tsyncWrite, suidMode, opMode, eaqsrdt, goodThr, badThr, tConnect, tDecisionMade, minThr, tMargin, tMinIdle, tQuery, tDmThreshold, recheckThr, dNsrmEnable, nsrmWlanEnable, nsrmWlanMode) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    iget-object v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->version:Ljava/lang/String;

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    const-string/jumbo v9, "\',"

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 287
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenWwanTime:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 287
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 288
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tOpenWlanTime:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 288
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 289
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketSetupTime:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 289
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 290
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tSyncSocketWriteTime:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 290
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 291
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->suidMode:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 291
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 292
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->opMode:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 292
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 293
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->eaqsrdt:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 293
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 294
    iget-wide v10, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->goodThr:D

    .line 284
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 294
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 295
    iget-wide v10, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->badThr:D

    .line 284
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 295
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 296
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tConnect:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 296
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 297
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDecisionMade:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 297
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 298
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->minThr:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 298
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 299
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMargin:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 299
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 300
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tMinIdle:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 300
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 301
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tQuery:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 301
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 302
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->tDmThreshold:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 302
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 303
    iget-wide v10, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->recheckThr:D

    .line 284
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 303
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 304
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->dNsrmEnable:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 304
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 305
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->nsrmWlanEnable:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 305
    const-string/jumbo v9, ","

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 306
    iget v9, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->nsrmWlanMode:I

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 307
    const-string/jumbo v9, ");"

    .line 284
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 308
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v7, "DELETE FROM nsrmAppsList"

    .line 312
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->apps:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, "app":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INSERT INTO nsrmAppsList( appName) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 317
    const-string/jumbo v9, "\');"

    .line 315
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v7    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 344
    .local v4, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v8, "DPM:NSRM:PLCY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t commit config to database. ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return v12

    .line 322
    .end local v4    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v7, "DELETE FROM nsrmNTOs"

    .line 323
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 326
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v8}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get0(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/util/HashMap;

    move-result-object v6

    .line 328
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 329
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INSERT INTO nsrmNTOs(mccmnc, port, nto) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 331
    iget-object v8, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmConfigData;->mccMnc:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;

    invoke-static {v8}, Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;->-get1(Lcom/qti/dpm/DpmNsrmConfigParser$MccMnc;)Ljava/lang/String;

    move-result-object v8

    .line 329
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    const-string/jumbo v9, "\',"

    .line 329
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 329
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    const-string/jumbo v9, ","

    .line 329
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 329
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 334
    const-string/jumbo v9, ");"

    .line 329
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    const-string/jumbo v8, "DPM:NSRM:PLCY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNsrmDb: sql stmt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v8, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 325
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 340
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "i":I
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "sql":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "DPM:NSRM:PLCY"

    const-string/jumbo v9, "db is not open"

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    return v12

    .line 347
    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    .restart local v5    # "i":I
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x3e8

    return v8
.end method

.method private validateDoubleByRange(Ljava/lang/String;DD)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "minVal"    # D
    .param p4, "maxVal"    # D

    .prologue
    const/4 v6, -0x3

    .line 1150
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1156
    .local v2, "num":D
    cmpg-double v1, v2, p2

    if-ltz v1, :cond_0

    cmpl-double v1, v2, p4

    if-lez v1, :cond_1

    .line 1158
    :cond_0
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1159
    const-string/jumbo v5, " is out of range,"

    .line 1158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1160
    const-string/jumbo v5, " min "

    .line 1158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1161
    const-string/jumbo v5, " max "

    .line 1158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return v6

    .line 1151
    .end local v2    # "num":D
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "NumberFormatException"

    invoke-static {v1, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1154
    return v6

    .line 1164
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "num":D
    :cond_1
    const/16 v1, 0x3e8

    return v1
.end method

.method private validateInteger(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1133
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    const/16 v1, 0x3e8

    return v1

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    const-string/jumbo v2, "NumberFormatException"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1137
    const/4 v1, -0x3

    return v1
.end method

.method private validateIntegerByRange(Ljava/lang/String;II)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "minVal"    # I
    .param p3, "maxVal"    # I

    .prologue
    const/4 v5, -0x3

    .line 1110
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1116
    .local v1, "num":I
    if-lt v1, p2, :cond_0

    if-le v1, p3, :cond_1

    .line 1118
    :cond_0
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1119
    const-string/jumbo v4, " is out of range,"

    .line 1118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1120
    const-string/jumbo v4, " min "

    .line 1118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1121
    const-string/jumbo v4, " max "

    .line 1118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return v5

    .line 1111
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    const-string/jumbo v3, "NumberFormatException"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1114
    return v5

    .line 1124
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "num":I
    :cond_1
    const/16 v2, 0x3e8

    return v2
.end method

.method private validatePolicyTree(Lorg/w3c/dom/Document;)I
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v5, -0x3

    .line 1172
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 1174
    .local v2, "root":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "NsrmPolicy"

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1176
    const-string/jumbo v3, "Nsrm"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 1177
    .local v1, "nsrm":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 1179
    const-string/jumbo v3, "Version"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1180
    .local v0, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1181
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "There must be only one version node <Version> as a child of NSRM node"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return v5

    .line 1188
    .end local v0    # "list":Lorg/w3c/dom/NodeList;
    :cond_0
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "NSRM node must be <Nsrm> as a child of <NsrmPolicy>"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    return v5

    .line 1194
    .end local v1    # "nsrm":Lorg/w3c/dom/Element;
    :cond_1
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "root node must be <NsrmPolicy>"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return v5

    .line 1197
    .restart local v0    # "list":Lorg/w3c/dom/NodeList;
    .restart local v1    # "nsrm":Lorg/w3c/dom/Element;
    :cond_2
    const/16 v3, 0x3e8

    return v3
.end method


# virtual methods
.method public deleteNsrmAppLearnedInfo(Ljava/lang/String;)Z
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    const-string/jumbo v2, "DPM:NSRM:PLCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteNsrmAppLearnedInfo app = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "nsrmAppLearnedInfo"

    const-string/jumbo v4, "appName = ?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected initialize()Z
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, "success":Z
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "f":Ljava/io/File;
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "initialize"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    :try_start_0
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "initialize config file exists"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v3, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual {p0, v3}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateConfig(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 423
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "initialize: updateConfig success"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    const/4 v2, 0x1

    .line 430
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 431
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "Using Fallback NsrmConfiguration.xml"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :try_start_1
    const-string/jumbo v3, "/system/etc/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual {p0, v3}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateConfig(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-ne v3, v5, :cond_1

    .line 434
    const/4 v2, 0x1

    .line 440
    :cond_1
    :goto_1
    return v2

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 437
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateConfig(Ljava/lang/String;)I
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting NSRM parser, version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getString()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, -0x1

    .line 472
    .local v0, "retVal":I
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmNsrmConfigParser;->parseNsrmFile(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 473
    const-string/jumbo v1, "DPM:NSRM:PLCY"

    const-string/jumbo v2, "Finished parsing NSRM Config file"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, "/data/dpm/nsrm/NsrmConfiguration.xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateDefaultConfigFile(Ljava/lang/String;)V

    .line 478
    :cond_0
    return v0
.end method

.method public updateNsrmAppLearnedInfoDb(Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;)I
    .locals 10
    .param p1, "data"    # Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;

    .prologue
    const/4 v9, -0x1

    .line 352
    :try_start_0
    iget-boolean v3, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->ismDbOpen:Z

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/qti/dpm/DpmNsrmConfigParser;->appExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNsrmAppLearnedInfoDb for existing app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string/jumbo v3, "currMode"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->currMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string/jumbo v3, "cc1"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string/jumbo v3, "cc2"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string/jumbo v3, "npcc2"

    iget-wide v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->pcc2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 365
    const-string/jumbo v3, "goodCnt"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->goodCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string/jumbo v3, "badCnt"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->badCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string/jumbo v3, "decisionMade"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->decisionMade:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string/jumbo v3, "reCountCC2"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->reCountCC2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string/jumbo v3, "dmTimestamp"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->dmTimestamp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string/jumbo v3, "appLearningTime1"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string/jumbo v3, "appLearningTime2"

    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "nsrmAppLearnedInfo"

    const-string/jumbo v5, "appName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 401
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    const/16 v3, 0x3e8

    return v3

    .line 374
    :cond_0
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNsrmAppLearnedInfoDb for new app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "INSERT INTO nsrmAppLearnedInfo(appName, uid, currMode, cc1, cc2, npcc2, goodCnt, badCnt, decisionMade, reCountCC2, dmTimestamp, appLearningTime1, appLearningTime2) VALUES (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 377
    iget-object v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appName:Ljava/lang/String;

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 377
    const-string/jumbo v4, "\',"

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 378
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->uid:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 378
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 379
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->currMode:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 379
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc1:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->cc2:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 382
    iget-wide v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->pcc2:D

    .line 375
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 382
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->goodCnt:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->badCnt:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->decisionMade:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 386
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->reCountCC2:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 386
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->dmTimestamp:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime1:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    const-string/jumbo v4, ","

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    iget v4, p1, Lcom/qti/dpm/DpmNsrmConfigParser$NsrmAppLearnedInfoData;->appLearningTime2:I

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 390
    const-string/jumbo v4, ");"

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmConfigParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 397
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 398
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t commit config to database. ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return v9

    .line 394
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "DPM:NSRM:PLCY"

    const-string/jumbo v4, "db is not open"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    return v9
.end method
