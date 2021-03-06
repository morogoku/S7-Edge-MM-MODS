.class public Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "ScoverState.java"


# static fields
.field public static final COLOR_BLACK:I = 0x1

.field public static final COLOR_BLUE:I = 0x5

.field public static final COLOR_BLUSH_PINK:I = 0x8

.field public static final COLOR_CARBON_METAL:I = 0x6

.field public static final COLOR_CHARCOAL:I = 0xa

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GOLD:I = 0x7

.field public static final COLOR_GRAYISH_BLUE:I = 0x9

.field public static final COLOR_GREEN:I = 0xb

.field public static final COLOR_INDIGO_BLUE:I = 0x5

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x3

.field public static final COLOR_MINT:I = 0x9

.field public static final COLOR_MINT_BLUE:I = 0x9

.field public static final COLOR_MUSTARD_YELLOW:I = 0xc

.field public static final COLOR_NAVY:I = 0x4

.field public static final COLOR_OATMEAL:I = 0xc

.field public static final COLOR_OATMEAL_BEIGE:I = 0xc

.field public static final COLOR_ORANGE:I = 0xd

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xb

.field public static final COLOR_PEARL_WHITE:I = 0x2

.field public static final COLOR_PINK:I = 0x8

.field public static final COLOR_PLUM:I = 0x3

.field public static final COLOR_PLUM_RED:I = 0x3

.field public static final COLOR_ROSE_GOLD:I = 0x7

.field public static final COLOR_SILVER:I = 0x6

.field public static final COLOR_SOFT_PINK:I = 0x8

.field public static final COLOR_WHITE:I = 0x2

.field public static final COLOR_WILD_ORANGE:I = 0xd

.field public static final COLOR_YELLOW:I = 0xc

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "ScoverState"

.field public static final TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final TYPE_CLEAR_COVER:I = 0x8

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_LED_COVER:I = 0x7

.field public static final TYPE_NFC_SMART_COVER:I = 0xff

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5

.field public static final TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public attached:Z

.field public color:I

.field private heightPixel:I

.field public model:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, switchState:Z

    .line 290
    const/4 v0, 0x2

    iput v0, p0, type:I

    .line 291
    iput v1, p0, color:I

    .line 292
    iput v1, p0, widthPixel:I

    .line 293
    iput v1, p0, heightPixel:I

    .line 294
    iput-boolean v1, p0, attached:Z

    .line 295
    iput v1, p0, model:I

    .line 296
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .registers 7
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-boolean p1, p0, switchState:Z

    .line 309
    iput p2, p0, type:I

    .line 310
    iput p3, p0, color:I

    .line 311
    iput p4, p0, widthPixel:I

    .line 312
    iput p5, p0, heightPixel:I

    .line 313
    iput-boolean v0, p0, attached:Z

    .line 314
    iput v0, p0, model:I

    .line 315
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-boolean p1, p0, switchState:Z

    .line 328
    iput p2, p0, type:I

    .line 329
    iput p3, p0, color:I

    .line 330
    iput p4, p0, widthPixel:I

    .line 331
    iput p5, p0, heightPixel:I

    .line 332
    iput-boolean p6, p0, attached:Z

    .line 333
    const/4 v0, 0x0

    iput v0, p0, model:I

    .line 334
    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z
    .param p7, "model"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-boolean p1, p0, switchState:Z

    .line 349
    iput p2, p0, type:I

    .line 350
    iput p3, p0, color:I

    .line 351
    iput p4, p0, widthPixel:I

    .line 352
    iput p5, p0, heightPixel:I

    .line 353
    iput-boolean p6, p0, attached:Z

    .line 354
    iput p7, p0, model:I

    .line 355
    return-void
.end method


# virtual methods
.method public getAttachState()Z
    .registers 2

    .prologue
    .line 410
    iget-boolean v0, p0, attached:Z

    return v0
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 382
    iget v0, p0, color:I

    return v0
.end method

.method public getModel()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, model:I

    return v0
.end method

.method public getSwitchState()Z
    .registers 2

    .prologue
    .line 364
    iget-boolean v0, p0, switchState:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 373
    iget v0, p0, type:I

    return v0
.end method

.method public getWindowHeight()I
    .registers 2

    .prologue
    .line 400
    iget v0, p0, heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .registers 2

    .prologue
    .line 391
    iget v0, p0, widthPixel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 428
    const-string v0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
