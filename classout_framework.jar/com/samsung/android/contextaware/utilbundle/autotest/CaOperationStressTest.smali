.class Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "CaOperationStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "delayTime"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    .line 34
    return-void
.end method

.method private getEnvironmentSensorPacket()[B
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    const/16 v1, 0x1a

    new-array v0, v1, [B

    .line 111
    .local v0, "packet":[B
    aput-byte v2, v0, v3

    .line 112
    aput-byte v2, v0, v2

    .line 113
    const/16 v1, 0xc

    aput-byte v1, v0, v4

    .line 114
    aput-byte v4, v0, v5

    .line 115
    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 116
    const/4 v1, 0x5

    aput-byte v6, v0, v1

    .line 117
    aput-byte v3, v0, v6

    .line 118
    const/4 v1, 0x7

    aput-byte v5, v0, v1

    .line 120
    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 121
    const/16 v1, 0x9

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    .line 122
    const/16 v1, 0xa

    aput-byte v3, v0, v1

    .line 123
    const/16 v1, 0xb

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    .line 125
    const/16 v1, 0xc

    aput-byte v3, v0, v1

    .line 126
    const/16 v1, 0xd

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 128
    const/16 v1, 0xe

    aput-byte v3, v0, v1

    .line 129
    const/16 v1, 0xf

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    .line 130
    const/16 v1, 0x10

    aput-byte v3, v0, v1

    .line 131
    const/16 v1, 0x11

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 133
    const/16 v1, 0x12

    aput-byte v3, v0, v1

    .line 134
    const/16 v1, 0x13

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    .line 136
    const/16 v1, 0x14

    aput-byte v3, v0, v1

    .line 137
    const/16 v1, 0x15

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    .line 138
    const/16 v1, 0x16

    aput-byte v3, v0, v1

    .line 139
    const/16 v1, 0x17

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    .line 141
    const/16 v1, 0x18

    aput-byte v3, v0, v1

    .line 142
    const/16 v1, 0x19

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    .line 144
    return-object v0
.end method

.method private getEnvironmentSensorPacket1()[B
    .registers 9

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 154
    const/16 v1, 0xe

    new-array v0, v1, [B

    .line 156
    .local v0, "packet":[B
    aput-byte v3, v0, v4

    .line 157
    aput-byte v3, v0, v3

    .line 158
    const/4 v1, 0x2

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    .line 159
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 160
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 161
    aput-byte v5, v0, v6

    .line 162
    aput-byte v4, v0, v5

    .line 163
    aput-byte v3, v0, v7

    .line 165
    const/16 v1, 0x8

    aput-byte v4, v0, v1

    .line 166
    const/16 v1, 0x9

    aput-byte v6, v0, v1

    .line 167
    const/16 v1, 0xa

    aput-byte v4, v0, v1

    .line 168
    const/16 v1, 0xb

    aput-byte v5, v0, v1

    .line 169
    const/16 v1, 0xc

    aput-byte v4, v0, v1

    .line 170
    const/16 v1, 0xd

    aput-byte v7, v0, v1

    .line 172
    return-object v0
.end method

.method private getPedometer()[B
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 83
    .local v0, "packet":[B
    aput-byte v2, v0, v3

    .line 84
    aput-byte v2, v0, v2

    .line 85
    const/4 v1, 0x2

    aput-byte v4, v0, v1

    .line 87
    aput-byte v2, v0, v4

    .line 88
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 89
    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 91
    const/4 v1, 0x6

    aput-byte v3, v0, v1

    .line 92
    const/4 v1, 0x7

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    .line 93
    const/16 v1, 0x8

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    .line 94
    const/16 v1, 0x9

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    .line 95
    const/16 v1, 0xa

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    .line 96
    const/16 v1, 0xb

    aput-byte v3, v0, v1

    .line 97
    const/16 v1, 0xc

    aput-byte v4, v0, v1

    .line 99
    return-object v0
.end method

.method private getServicePacket(B)[B
    .registers 5
    .param p1, "libType"    # B

    .prologue
    const/4 v2, 0x1

    .line 183
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 185
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 186
    aput-byte v2, v0, v2

    .line 187
    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 188
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 190
    return-object v0
.end method


# virtual methods
.method protected final getPacket(I)[B
    .registers 3
    .param p1, "service"    # I

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_1a

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_6
    return-object v0

    .line 47
    :pswitch_7
    const/4 v0, 0x5

    invoke-direct {p0, v0}, getServicePacket(B)[B

    move-result-object v0

    goto :goto_6

    .line 49
    :pswitch_d
    const/16 v0, 0xd

    invoke-direct {p0, v0}, getServicePacket(B)[B

    move-result-object v0

    goto :goto_6

    .line 51
    :pswitch_14
    const/4 v0, 0x7

    invoke-direct {p0, v0}, getServicePacket(B)[B

    move-result-object v0

    goto :goto_6

    .line 45
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method
