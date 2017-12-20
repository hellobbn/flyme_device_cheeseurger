.class public Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;
.super Ljava/lang/Object;
.source "QtiEmergencyCallHelper.java"


# static fields
.field private static final ALLOW_ECALL_ENHANCEMENT_PROPERTY:Ljava/lang/String; = "persist.radio.enhance_ecall"

.field private static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiEmergencyCallHelper"

.field private static final PRIMARY_STACK_MODEMID:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static emerNum:Ljava/lang/String;

.field private static isDeviceInDualStandBy:Z

.field private static isEmergencyCallHelperInUse:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInDualStandBy:Z

    .line 28
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyCallHelperInUse:Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall()I
    .locals 16

    .prologue
    .line 48
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    .line 50
    .local v4, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v9

    .line 51
    .local v9, "voicePhoneId":I
    const/4 v3, -0x1

    .line 53
    .local v3, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 54
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 56
    .local v2, "phoneCount":I
    sget-boolean v10, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInDualStandBy:Z

    if-eqz v10, :cond_3

    .line 57
    const/4 v0, 0x0

    .local v0, "phId":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 58
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 59
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 60
    .local v6, "subId":I
    sget-object v10, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyNumInternal(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 61
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "For sub specific number, return pref voice phone id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v9

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "subId":I
    :cond_1
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getMultiSimConfiguration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v10

    sget-object v11, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v10, v11, :cond_3

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v1, v11, v10

    .line 74
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    const-string/jumbo v13, "QtiEmergencyCallHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Go through all phones, phoneId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " PhoneState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " PhoneType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_2

    .line 77
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Call already active on phoneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    return v10

    .line 71
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "phId":I
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "phId":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 87
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 88
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 89
    .local v5, "ss":I
    if-nez v5, :cond_8

    .line 90
    move v3, v0

    .line 91
    if-ne v0, v9, :cond_8

    .line 94
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "ss":I
    :cond_4
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Voice phoneId in service = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v10, -0x1

    if-ne v3, v10, :cond_5

    .line 97
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    .line 98
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 99
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 100
    .restart local v5    # "ss":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 101
    move v3, v0

    .line 102
    if-ne v0, v9, :cond_9

    .line 106
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "ss":I
    :cond_5
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Voice phoneId in Limited service = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v10, -0x1

    if-ne v3, v10, :cond_7

    .line 109
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_6

    .line 112
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    .line 114
    .local v8, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v7, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_a

    .line 116
    invoke-virtual {v8, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v10

    .line 117
    const/4 v11, 0x1

    .line 116
    if-ne v10, v11, :cond_a

    .line 118
    move v3, v0

    .line 119
    if-ne v0, v9, :cond_a

    .line 122
    .end local v8    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_6
    const/4 v10, -0x1

    if-ne v3, v10, :cond_7

    .line 123
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v3

    .line 126
    :cond_7
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Voice phoneId in service = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 127
    const-string/jumbo v12, " preferred phoneId ="

    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v3

    .line 86
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v5    # "ss":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 97
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 109
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "ss":I
    .restart local v8    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static getPrimaryStackPhoneId()I
    .locals 7

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "modemUuId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 135
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, -0x1

    .line 137
    .local v3, "primayStackPhoneId":I
    const/4 v0, 0x0

    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 139
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 140
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Logical Modem id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "modemUuId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    .line 144
    if-nez v4, :cond_0

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 152
    move v3, v0

    .line 153
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primay Stack phone id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " selected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 160
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    const-string/jumbo v5, "Returning default phone id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v3, 0x0

    .line 164
    :cond_3
    return v3
.end method

.method public static isDeviceInSingleStandby()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    const-string/jumbo v4, "persist.radio.enhance_ecall"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    const-string/jumbo v5, "persist.radio.enhance_ecall not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v6

    .line 173
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 174
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 178
    .local v0, "phoneCnt":I
    if-ne v0, v7, :cond_1

    .line 179
    return v7

    .line 181
    :cond_1
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 183
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    .line 185
    .local v3, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 186
    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 188
    :cond_2
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    const-string/jumbo v5, "modem is in single standby mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sput-boolean v6, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInDualStandBy:Z

    .line 190
    return v7

    .line 181
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_4
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    const-string/jumbo v5, "modem is in dual standby mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v6
.end method

.method public static isEmergencyNumInternal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "isEmergencyNum":Z
    const/4 v4, -0x1

    .line 201
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 202
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 203
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 206
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 207
    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 205
    .local v0, "isEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 210
    invoke-static {v5, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 214
    .end local v0    # "isEmergencyNum":Z
    :cond_1
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "isLocalEmergencyNum":Z
    const/4 v4, -0x1

    .line 220
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 221
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 222
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isLocalEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 226
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 228
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 227
    or-int/2addr v0, v7

    .line 225
    .local v0, "isLocalEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isLocalEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 231
    invoke-static {p0, v5, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 235
    .end local v0    # "isLocalEmergencyNum":Z
    :cond_1
    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "isPotentialEmergencyNum":Z
    const/4 v4, -0x1

    .line 241
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 242
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 244
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isPotentialEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 246
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 248
    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    .line 247
    or-int/2addr v0, v7

    .line 245
    .local v0, "isPotentialEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isPotentialEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 251
    invoke-static {v5, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 255
    .end local v0    # "isPotentialEmergencyNum":Z
    :cond_1
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "isPotentialLocalEmergencyNum":Z
    const/4 v4, -0x1

    .line 261
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 262
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 264
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isPotentialLocalEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 266
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 268
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 267
    or-int/2addr v0, v7

    .line 265
    .local v0, "isPotentialLocalEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isPotentialLocalEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 272
    invoke-static {p0, v5, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 276
    .end local v0    # "isPotentialLocalEmergencyNum":Z
    :cond_1
    return v0
.end method
