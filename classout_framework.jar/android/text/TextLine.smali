.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, sCached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, mWorkPaint:Landroid/text/TextPaint;

    .line 60
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 62
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 64
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .registers 24
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    .prologue
    .line 391
    iget v1, p0, mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    const/4 v1, 0x1

    :goto_6
    move/from16 v0, p4

    if-ne v1, v0, :cond_33

    .line 392
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 393
    .local v13, "w":F
    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 398
    .end local v13    # "w":F
    :goto_30
    return v13

    .line 391
    :cond_31
    const/4 v1, 0x0

    goto :goto_6

    .line 398
    :cond_33
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v13

    goto :goto_30
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .registers 28
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    .prologue
    .line 988
    move-object/from16 v0, p0

    iget-boolean v1, v0, mCharsValid:Z

    if-eqz v1, :cond_21

    .line 989
    sub-int v4, p4, p3

    .line 990
    .local v4, "count":I
    sub-int v6, p6, p5

    .line 991
    .local v6, "contextCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 998
    .end local v4    # "count":I
    .end local v6    # "contextCount":I
    :goto_20
    return-void

    .line 994
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, mStart:I

    move/from16 v17, v0

    .line 995
    .local v17, "delta":I
    move-object/from16 v0, p0

    iget-object v8, v0, mText:Ljava/lang/CharSequence;

    add-int v9, v17, p3

    add-int v10, v17, p4

    add-int v11, v17, p5

    add-int v12, v17, p6

    move/from16 v0, p9

    int-to-float v14, v0

    move-object/from16 v7, p1

    move/from16 v13, p8

    move/from16 v15, p7

    move-object/from16 v16, p2

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_20
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .prologue
    .line 685
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 686
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 687
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 688
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 689
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 691
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 693
    invoke-static/range {v0 .. v5}, updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 695
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .registers 30
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    .prologue
    .line 618
    if-ltz p1, :cond_c

    if-eqz p6, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, mLen:I

    :goto_8
    move/from16 v0, p5

    if-ne v0, v3, :cond_3a

    .line 622
    :cond_c
    if-eqz p6, :cond_25

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    sub-int v20, v3, v5

    .line 676
    :cond_22
    :goto_22
    return v20

    .line 618
    :cond_23
    const/4 v3, 0x0

    goto :goto_8

    .line 625
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    sub-int v20, v3, v5

    goto :goto_22

    .line 628
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, mWorkPaint:Landroid/text/TextPaint;

    .line 629
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 631
    move/from16 v4, p2

    .line 633
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_68

    .line 634
    move/from16 v20, p3

    .line 670
    .local v20, "spanLimit":I
    :cond_4f
    if-eqz p4, :cond_e7

    const/4 v6, 0x1

    .line 671
    .local v6, "dir":I
    :goto_52
    if-eqz p6, :cond_ea

    const/4 v8, 0x0

    .line 672
    .local v8, "cursorOpt":I
    :goto_55
    move-object/from16 v0, p0

    iget-boolean v3, v0, mCharsValid:Z

    if-eqz v3, :cond_ed

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v20

    goto :goto_22

    .line 636
    .end local v6    # "dir":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_68
    if-eqz p6, :cond_d3

    add-int/lit8 v22, p5, 0x1

    .line 637
    .local v22, "target":I
    :goto_6c
    move-object/from16 v0, p0

    iget v3, v0, mStart:I

    add-int v17, v3, p3

    .line 639
    .local v17, "limit":I
    :goto_72
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    sub-int v20, v3, v5

    .line 641
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_d6

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 649
    .local v21, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 651
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_4f

    .line 652
    const/16 v18, 0x0

    .line 653
    .local v18, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_bd
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_df

    .line 654
    aget-object v19, v21, v16

    .line 655
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_d9

    move-object/from16 v18, v19

    .line 656
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 653
    :goto_d0
    add-int/lit8 v16, v16, 0x1

    goto :goto_bd

    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .end local v20    # "spanLimit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_d3
    move/from16 v22, p5

    .line 636
    goto :goto_6c

    .line 644
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    .restart local v22    # "target":I
    :cond_d6
    move/from16 v4, v20

    goto :goto_72

    .line 658
    .restart local v16    # "j":I
    .restart local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .restart local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_d9
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_d0

    .line 662
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_df
    if-eqz v18, :cond_4f

    .line 665
    if-nez p6, :cond_22

    move/from16 v20, v4

    goto/16 :goto_22

    .line 670
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_e7
    const/4 v6, 0x0

    goto/16 :goto_52

    .line 671
    .restart local v6    # "dir":I
    :cond_ea
    const/4 v8, 0x2

    goto/16 :goto_55

    .line 676
    .restart local v8    # "cursorOpt":I
    :cond_ed
    move-object/from16 v0, p0

    iget-object v10, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, mStart:I

    sub-int v20, v3, v5

    goto/16 :goto_22
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 37
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    .prologue
    .line 824
    const/16 v23, 0x0

    .line 826
    .local v23, "ret":F
    move-object/from16 v0, p0

    iget v1, v0, mStart:I

    add-int v4, v1, p3

    .line 827
    .local v4, "textStart":I
    move-object/from16 v0, p0

    iget v1, v0, mStart:I

    add-int v5, v1, p4

    .line 829
    .local v5, "textLimit":I
    if-nez p12, :cond_14

    if-eqz p6, :cond_4b

    if-eqz p5, :cond_4b

    .line 830
    :cond_14
    const/4 v7, 0x0

    .line 831
    .local v7, "previousTop":I
    const/4 v8, 0x0

    .line 832
    .local v8, "previousAscent":I
    const/4 v9, 0x0

    .line 833
    .local v9, "previousDescent":I
    const/4 v10, 0x0

    .line 834
    .local v10, "previousBottom":I
    const/4 v11, 0x0

    .line 836
    .local v11, "previousLeading":I
    if-eqz p11, :cond_71

    const/16 v22, 0x1

    .line 838
    .local v22, "needUpdateMetrics":Z
    :goto_1d
    if-eqz v22, :cond_33

    .line 839
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 840
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 841
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 842
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 843
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 846
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 848
    if-eqz v22, :cond_4b

    move-object/from16 v6, p11

    .line 849
    invoke-static/range {v6 .. v11}, updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 854
    .end local v7    # "previousTop":I
    .end local v8    # "previousAscent":I
    .end local v9    # "previousDescent":I
    .end local v10    # "previousBottom":I
    .end local v11    # "previousLeading":I
    .end local v22    # "needUpdateMetrics":Z
    :cond_4b
    if-eqz p6, :cond_69

    .line 855
    if-eqz p5, :cond_51

    .line 856
    sub-float p7, p7, v23

    .line 858
    :cond_51
    move-object/from16 v0, p0

    iget-object v14, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 862
    :cond_69
    if-eqz p5, :cond_70

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23    # "ret":F
    :cond_70
    return v23

    .line 836
    .restart local v7    # "previousTop":I
    .restart local v8    # "previousAscent":I
    .restart local v9    # "previousDescent":I
    .restart local v10    # "previousBottom":I
    .restart local v11    # "previousLeading":I
    .restart local v23    # "ret":F
    :cond_71
    const/16 v22, 0x0

    goto :goto_1d
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 41
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    .prologue
    .line 889
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1a

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, mWorkPaint:Landroid/text/TextPaint;

    .line 891
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 892
    if-eqz p10, :cond_18

    .line 893
    move-object/from16 v0, p10

    invoke-static {v0, v3}, expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 895
    :cond_18
    const/4 v2, 0x0

    .line 969
    .end local v3    # "wp":Landroid/text/TextPaint;
    :goto_19
    return v2

    .line 898
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_51

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, mWorkPaint:Landroid/text/TextPaint;

    .line 900
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 901
    move/from16 v5, p2

    .line 902
    .local v5, "mlimit":I
    if-nez p11, :cond_33

    move/from16 v0, p2

    if-ge v5, v0, :cond_4f

    :cond_33
    const/4 v15, 0x1

    :goto_34
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v15}, handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    goto :goto_19

    :cond_4f
    const/4 v15, 0x0

    goto :goto_34

    .line 906
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 914
    move/from16 v27, p6

    .line 915
    .local v27, "originalX":F
    move/from16 v9, p1

    .local v9, "i":I
    :goto_83
    move/from16 v0, p2

    if-ge v9, v0, :cond_1bb

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, mWorkPaint:Landroid/text/TextPaint;

    .line 917
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    sub-int v24, v2, v4

    .line 921
    .local v24, "inext":I
    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 923
    .restart local v5    # "mlimit":I
    const/4 v7, 0x0

    .line 925
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v12, 0x0

    .local v12, "j":I
    move/from16 v25, v12

    .end local v12    # "j":I
    .local v25, "j":I
    :goto_b7
    move-object/from16 v0, p0

    iget-object v2, v0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_ff

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_df

    move-object/from16 v0, p0

    iget-object v2, v0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    add-int/2addr v4, v9

    if-gt v2, v4, :cond_e4

    .line 925
    :cond_df
    :goto_df
    add-int/lit8 v12, v25, 0x1

    .end local v25    # "j":I
    .restart local v12    # "j":I
    move/from16 v25, v12

    .end local v12    # "j":I
    .restart local v25    # "j":I
    goto :goto_b7

    .line 930
    :cond_e4
    move-object/from16 v0, p0

    iget-object v2, v0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v28, v2, v25

    .line 931
    .local v28, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_f9

    move-object/from16 v7, v28

    .line 932
    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_df

    .line 936
    :cond_f9
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_df

    .line 940
    .end local v28    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_ff
    if-eqz v7, :cond_12a

    .line 941
    if-nez p11, :cond_107

    move/from16 v0, p2

    if-ge v5, v0, :cond_127

    :cond_107
    const/16 v18, 0x1

    :goto_109
    move-object/from16 v6, p0

    move-object v8, v3

    move v10, v5

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v6 .. v18}, handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v12, v25

    .line 915
    .end local v25    # "j":I
    .restart local v12    # "j":I
    :cond_123
    move/from16 v9, v24

    goto/16 :goto_83

    .line 941
    .end local v12    # "j":I
    .restart local v25    # "j":I
    :cond_127
    const/16 v18, 0x0

    goto :goto_109

    .line 946
    :cond_12a
    move v12, v9

    .end local v25    # "j":I
    .restart local v12    # "j":I
    :goto_12b
    if-ge v12, v5, :cond_123

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    sub-int v13, v2, v4

    .line 950
    .local v13, "jnext":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 951
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_14e
    move-object/from16 v0, p0

    iget-object v2, v0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_189

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    add-int/2addr v4, v13

    if-ge v2, v4, :cond_176

    move-object/from16 v0, p0

    iget-object v2, v0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, mStart:I

    add-int/2addr v4, v12

    if-gt v2, v4, :cond_179

    .line 951
    :cond_176
    :goto_176
    add-int/lit8 v26, v26, 0x1

    goto :goto_14e

    .line 956
    :cond_179
    move-object/from16 v0, p0

    iget-object v2, v0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v28, v2, v26

    .line 957
    .local v28, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_176

    .line 961
    .end local v28    # "span":Landroid/text/style/CharacterStyle;
    :cond_189
    move-object/from16 v0, p0

    iget v2, v0, mLen:I

    if-ge v13, v2, :cond_193

    .line 962
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 964
    :cond_193
    if-nez p11, :cond_199

    move/from16 v0, p2

    if-ge v13, v0, :cond_1b8

    :cond_199
    const/16 v23, 0x1

    :goto_19b
    move-object/from16 v10, p0

    move-object v11, v3

    move v14, v9

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v23}, handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    .line 946
    move v12, v13

    goto/16 :goto_12b

    .line 964
    :cond_1b8
    const/16 v23, 0x0

    goto :goto_19b

    .line 969
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    .end local v7    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v12    # "j":I
    .end local v13    # "jnext":I
    .end local v24    # "inext":I
    .end local v26    # "k":I
    :cond_1bb
    sub-float v2, p6, v27

    goto/16 :goto_19
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 35
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z

    .prologue
    .line 730
    if-eqz p12, :cond_9

    .line 731
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 734
    :cond_9
    sub-int v20, p3, p2

    .line 736
    .local v20, "runLen":I
    if-nez v20, :cond_10

    .line 737
    const/16 v19, 0x0

    .line 797
    :cond_f
    :goto_f
    return v19

    .line 740
    :cond_10
    const/16 v19, 0x0

    .line 742
    .local v19, "ret":F
    if-nez p13, :cond_24

    if-eqz p7, :cond_40

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_24

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_24

    if-eqz p6, :cond_40

    .line 743
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCharsValid:Z

    if-eqz v2, :cond_12c

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, mChars:[C

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v19

    .line 753
    :cond_40
    :goto_40
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 754
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float v19, v19, v2

    .line 757
    :cond_66
    if-eqz p7, :cond_123

    .line 758
    if-eqz p6, :cond_6c

    .line 759
    sub-float p8, p8, v19

    .line 762
    :cond_6c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_a9

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    .line 764
    .local v17, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 766
    .local v18, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 767
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 768
    move/from16 v0, p9

    int-to-float v4, v0

    add-float v5, p8, v19

    move/from16 v0, p11

    int-to-float v6, v0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 770
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 771
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 774
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_a9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_108

    .line 776
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    const v3, 0x3de38e39

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    mul-float/2addr v3, v5

    add-float v4, v2, v3

    .line 778
    .local v4, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    .line 779
    .restart local v17    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 780
    .restart local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v16

    .line 782
    .local v16, "previousAntiAlias":Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 783
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 785
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 786
    add-float v5, p8, v19

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v6, v4, v2

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 788
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 789
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 790
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 793
    .end local v4    # "underlineTop":F
    .end local v16    # "previousAntiAlias":Z
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_108
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v14, p10, v2

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    invoke-direct/range {v5 .. v14}, drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 797
    :cond_123
    if-eqz p6, :cond_f

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_f

    .line 747
    :cond_12c
    move-object/from16 v0, p0

    iget v15, v0, mStart:I

    .line 748
    .local v15, "delta":I
    move-object/from16 v0, p0

    iget-object v3, v0, mText:Ljava/lang/CharSequence;

    add-int v4, v15, p2

    add-int v5, v15, p3

    add-int v6, v15, p4

    add-int v7, v15, p5

    add-int v9, v15, p3

    move-object/from16 v2, p1

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v19

    goto/16 :goto_40
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 18
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 417
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .registers 5

    .prologue
    .line 76
    sget-object v3, sCached:[Landroid/text/TextLine;

    monitor-enter v3

    .line 77
    :try_start_3
    sget-object v2, sCached:[Landroid/text/TextLine;

    array-length v0, v2

    .local v0, "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 78
    sget-object v2, sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 79
    sget-object v2, sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    .line 80
    .local v1, "tl":Landroid/text/TextLine;
    sget-object v2, sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 81
    monitor-exit v3

    .line 89
    :goto_1a
    return-object v1

    .line 84
    .end local v1    # "tl":Landroid/text/TextLine;
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 85
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, <init>()V

    .line 89
    .restart local v1    # "tl":Landroid/text/TextLine;
    goto :goto_1a

    .line 84
    .end local v1    # "tl":Landroid/text/TextLine;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .registers 5
    .param p0, "tl"    # Landroid/text/TextLine;

    .prologue
    const/4 v3, 0x0

    .line 100
    iput-object v3, p0, mText:Ljava/lang/CharSequence;

    .line 101
    iput-object v3, p0, mPaint:Landroid/text/TextPaint;

    .line 102
    iput-object v3, p0, mDirections:Landroid/text/Layout$Directions;

    .line 103
    iput-object v3, p0, mSpanned:Landroid/text/Spanned;

    .line 104
    iput-object v3, p0, mTabs:Landroid/text/Layout$TabStops;

    .line 105
    iput-object v3, p0, mChars:[C

    .line 107
    iget-object v1, p0, mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 108
    iget-object v1, p0, mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 109
    iget-object v1, p0, mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 111
    sget-object v2, sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    :try_start_20
    sget-object v1, sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 113
    sget-object v1, sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_31

    .line 114
    sget-object v1, sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0

    .line 118
    :cond_2f
    monitor-exit v2

    .line 119
    return-object v3

    .line 112
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 118
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_34

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .registers 7
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .prologue
    .line 699
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 700
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 701
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 702
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 703
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 704
    return-void
.end method


# virtual methods
.method ascent(I)F
    .registers 11
    .param p1, "pos"    # I

    .prologue
    .line 1008
    iget-object v6, p0, mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_b

    .line 1009
    iget-object v6, p0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 1023
    :goto_a
    return v6

    .line 1012
    :cond_b
    iget v6, p0, mStart:I

    add-int/2addr p1, v6

    .line 1013
    iget-object v6, p0, mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1014
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_24

    .line 1015
    iget-object v6, p0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_a

    .line 1018
    :cond_24
    iget-object v5, p0, mWorkPaint:Landroid/text/TextPaint;

    .line 1019
    .local v5, "wp":Landroid/text/TextPaint;
    iget-object v6, p0, mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1020
    move-object v0, v4

    .local v0, "arr$":[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2e
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 1021
    .local v3, "span":Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1023
    .end local v3    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_38
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_a
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .registers 31
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-boolean v2, v0, mHasTabs:Z

    if-nez v2, :cond_44

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_25

    .line 196
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mLen:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 261
    :cond_24
    :goto_24
    return-void

    .line 199
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_44

    .line 200
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, mLen:I

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    goto :goto_24

    .line 205
    :cond_44
    const/16 v17, 0x0

    .line 206
    .local v17, "h":F
    move-object/from16 v0, p0

    iget-object v2, v0, mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v22, v0

    .line 207
    .local v22, "runs":[I
    const/16 v16, 0x0

    .line 209
    .local v16, "emojiRect":Landroid/graphics/RectF;
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v19, v2, -0x2

    .line 210
    .local v19, "lastRunIndex":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_57
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_24

    .line 211
    aget v21, v22, v18

    .line 212
    .local v21, "runStart":I
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    add-int v20, v21, v2

    .line 213
    .local v20, "runLimit":I
    move-object/from16 v0, p0

    iget v2, v0, mLen:I

    move/from16 v0, v20

    if-le v0, v2, :cond_78

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, mLen:I

    move/from16 v20, v0

    .line 216
    :cond_78
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10f

    const/4 v6, 0x1

    .line 218
    .local v6, "runIsRtl":Z
    :goto_82
    move/from16 v4, v21

    .line 219
    .local v4, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mHasTabs:Z

    if-eqz v2, :cond_112

    move/from16 v5, v21

    .local v5, "j":I
    :goto_8c
    move/from16 v0, v20

    if-gt v5, v0, :cond_161

    .line 220
    const/4 v15, 0x0

    .line 221
    .local v15, "codept":I
    const/4 v13, 0x0

    .line 223
    .local v13, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mHasTabs:Z

    if-eqz v2, :cond_c8

    move/from16 v0, v20

    if-ge v5, v0, :cond_c8

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    aget-char v15, v2, v5

    .line 225
    const v2, 0xd800

    if-lt v15, v2, :cond_c8

    const v2, 0xdc00

    if-ge v15, v2, :cond_c8

    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_c8

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v15

    .line 227
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v15, v2, :cond_116

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v15, v2, :cond_116

    .line 228
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v2, v15}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 236
    :cond_c8
    move/from16 v0, v20

    if-eq v5, v0, :cond_d2

    const/16 v2, 0x9

    if-eq v15, v2, :cond_d2

    if-eqz v13, :cond_10b

    .line 237
    :cond_d2
    add-float v7, p2, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e0

    move-object/from16 v0, p0

    iget v2, v0, mLen:I

    if-eq v5, v2, :cond_11e

    :cond_e0
    const/4 v11, 0x1

    :goto_e1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v2

    add-float v17, v17, v2

    .line 240
    const/16 v2, 0x9

    if-ne v15, v2, :cond_120

    .line 241
    move-object/from16 v0, p0

    iget v2, v0, mDir:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, mDir:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, nextTab(F)F

    move-result v3

    mul-float v17, v2, v3

    .line 257
    :cond_109
    :goto_109
    add-int/lit8 v4, v5, 0x1

    .line 219
    :cond_10b
    :goto_10b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8c

    .line 216
    .end local v4    # "segstart":I
    .end local v5    # "j":I
    .end local v6    # "runIsRtl":Z
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    .end local v15    # "codept":I
    :cond_10f
    const/4 v6, 0x0

    goto/16 :goto_82

    .restart local v4    # "segstart":I
    .restart local v6    # "runIsRtl":Z
    :cond_112
    move/from16 v5, v20

    .line 219
    goto/16 :goto_8c

    .line 229
    .restart local v5    # "j":I
    .restart local v13    # "bm":Landroid/graphics/Bitmap;
    .restart local v15    # "codept":I
    :cond_116
    const v2, 0xffff

    if-le v15, v2, :cond_c8

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 231
    goto :goto_10b

    .line 237
    :cond_11e
    const/4 v11, 0x0

    goto :goto_e1

    .line 242
    :cond_120
    if-eqz v13, :cond_109

    .line 243
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, ascent(I)F

    move-result v14

    .line 244
    .local v14, "bmAscent":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 245
    .local v12, "bitmapHeight":F
    neg-float v2, v14

    div-float v23, v2, v12

    .line 246
    .local v23, "scale":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v24, v2, v23

    .line 248
    .local v24, "width":F
    if-nez v16, :cond_13e

    .line 249
    new-instance v16, Landroid/graphics/RectF;

    .end local v16    # "emojiRect":Landroid/graphics/RectF;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    .line 251
    .restart local v16    # "emojiRect":Landroid/graphics/RectF;
    :cond_13e
    add-float v2, p2, v17

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v17

    add-float v7, v7, v24

    move/from16 v0, p4

    int-to-float v8, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 254
    add-float v17, v17, v24

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_109

    .line 210
    .end local v12    # "bitmapHeight":F
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "bmAscent":F
    .end local v15    # "codept":I
    .end local v23    # "scale":F
    .end local v24    # "width":F
    :cond_161
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_57
.end method

.method getOffsetToLeftRightOf(IZ)I
    .registers 33
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 450
    const/16 v17, 0x0

    .line 451
    .local v17, "lineStart":I
    move-object/from16 v0, p0

    iget v0, v0, mLen:I

    move/from16 v16, v0

    .line 452
    .local v16, "lineEnd":I
    move-object/from16 v0, p0

    iget v2, v0, mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_7c

    const/16 v21, 0x1

    .line 453
    .local v21, "paraIsRtl":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v28, v0

    .line 455
    .local v28, "runs":[I
    const/16 v27, 0x0

    .local v27, "runLevel":I
    move/from16 v4, v17

    .local v4, "runStart":I
    move/from16 v5, v16

    .local v5, "runLimit":I
    const/16 v18, -0x1

    .line 456
    .local v18, "newCaret":I
    const/16 v29, 0x0

    .line 458
    .local v29, "trailing":Z
    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7f

    .line 459
    const/4 v3, -0x2

    .line 537
    .local v3, "runIndex":I
    :cond_2a
    :goto_2a
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_137

    const/4 v8, 0x1

    .line 538
    .local v8, "advance":Z
    :goto_31
    if-eqz v8, :cond_13a

    const/4 v2, 0x2

    :goto_34
    add-int v10, v3, v2

    .line 539
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_159

    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v10, v2, :cond_159

    .line 540
    aget v2, v28, v10

    add-int v11, v17, v2

    .line 541
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    .line 543
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    if-le v12, v0, :cond_51

    .line 544
    move/from16 v12, v16

    .line 546
    :cond_51
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v20, v2, 0x3f

    .line 548
    .local v20, "otherRunLevel":I
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_13d

    const/4 v13, 0x1

    .line 550
    .local v13, "otherRunIsRtl":Z
    :goto_5e
    move/from16 v0, p2

    if-ne v0, v13, :cond_140

    const/4 v8, 0x1

    .line 551
    :goto_63
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_149

    .line 552
    if-eqz v8, :cond_143

    move v14, v11

    :goto_6b
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 555
    if-eqz v8, :cond_146

    .end local v12    # "otherRunLimit":I
    :goto_74
    move/from16 v0, v18

    if-ne v0, v12, :cond_153

    .line 558
    move v3, v10

    .line 559
    move/from16 v27, v20

    .line 560
    goto :goto_2a

    .line 452
    .end local v3    # "runIndex":I
    .end local v4    # "runStart":I
    .end local v5    # "runLimit":I
    .end local v8    # "advance":Z
    .end local v10    # "otherRunIndex":I
    .end local v11    # "otherRunStart":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "newCaret":I
    .end local v20    # "otherRunLevel":I
    .end local v21    # "paraIsRtl":Z
    .end local v27    # "runLevel":I
    .end local v28    # "runs":[I
    .end local v29    # "trailing":Z
    :cond_7c
    const/16 v21, 0x0

    goto :goto_11

    .line 460
    .restart local v4    # "runStart":I
    .restart local v5    # "runLimit":I
    .restart local v18    # "newCaret":I
    .restart local v21    # "paraIsRtl":Z
    .restart local v27    # "runLevel":I
    .restart local v28    # "runs":[I
    .restart local v29    # "trailing":Z
    :cond_7f
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_89

    .line 461
    move-object/from16 v0, v28

    array-length v3, v0

    .restart local v3    # "runIndex":I
    goto :goto_2a

    .line 465
    .end local v3    # "runIndex":I
    :cond_89
    const/4 v3, 0x0

    .restart local v3    # "runIndex":I
    :goto_8a
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v3, v2, :cond_fc

    .line 466
    aget v2, v28, v3

    add-int v4, v17, v2

    .line 467
    move/from16 v0, p1

    if-lt v0, v4, :cond_12b

    .line 468
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 469
    move/from16 v0, v16

    if-le v5, v0, :cond_a7

    .line 470
    move/from16 v5, v16

    .line 472
    :cond_a7
    move/from16 v0, p1

    if-ge v0, v5, :cond_12b

    .line 473
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v27, v2, 0x3f

    .line 475
    move/from16 v0, p1

    if-ne v0, v4, :cond_fc

    .line 480
    add-int/lit8 v22, p1, -0x1

    .line 481
    .local v22, "pos":I
    const/16 v23, 0x0

    .local v23, "prevRunIndex":I
    :goto_bb
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_fc

    .line 482
    aget v2, v28, v23

    add-int v26, v17, v2

    .line 483
    .local v26, "prevRunStart":I
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_128

    .line 484
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v25, v26, v2

    .line 486
    .local v25, "prevRunLimit":I
    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_de

    .line 487
    move/from16 v25, v16

    .line 489
    :cond_de
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_128

    .line 490
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v24, v2, 0x3f

    .line 492
    .local v24, "prevRunLevel":I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_128

    .line 494
    move/from16 v3, v23

    .line 495
    move/from16 v27, v24

    .line 496
    move/from16 v4, v26

    .line 497
    move/from16 v5, v25

    .line 498
    const/16 v29, 0x1

    .line 515
    .end local v22    # "pos":I
    .end local v23    # "prevRunIndex":I
    .end local v24    # "prevRunLevel":I
    .end local v25    # "prevRunLimit":I
    .end local v26    # "prevRunStart":I
    :cond_fc
    move-object/from16 v0, v28

    array-length v2, v0

    if-eq v3, v2, :cond_2a

    .line 516
    and-int/lit8 v2, v27, 0x1

    if-eqz v2, :cond_12f

    const/4 v6, 0x1

    .line 517
    .local v6, "runIsRtl":Z
    :goto_106
    move/from16 v0, p2

    if-ne v0, v6, :cond_131

    const/4 v8, 0x1

    .line 518
    .restart local v8    # "advance":Z
    :goto_10b
    if-eqz v8, :cond_133

    move v2, v5

    :goto_10e
    move/from16 v0, p1

    if-ne v0, v2, :cond_116

    move/from16 v0, v29

    if-eq v8, v0, :cond_2a

    :cond_116
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 520
    invoke-direct/range {v2 .. v8}, getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 524
    if-eqz v8, :cond_135

    move v2, v5

    :goto_121
    move/from16 v0, v18

    if-eq v0, v2, :cond_2a

    move/from16 v19, v18

    .line 595
    .end local v6    # "runIsRtl":Z
    .end local v18    # "newCaret":I
    .local v19, "newCaret":I
    :goto_127
    return v19

    .line 481
    .end local v8    # "advance":Z
    .end local v19    # "newCaret":I
    .restart local v18    # "newCaret":I
    .restart local v22    # "pos":I
    .restart local v23    # "prevRunIndex":I
    .restart local v26    # "prevRunStart":I
    :cond_128
    add-int/lit8 v23, v23, 0x2

    goto :goto_bb

    .line 465
    .end local v22    # "pos":I
    .end local v23    # "prevRunIndex":I
    .end local v26    # "prevRunStart":I
    :cond_12b
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8a

    .line 516
    :cond_12f
    const/4 v6, 0x0

    goto :goto_106

    .line 517
    .restart local v6    # "runIsRtl":Z
    :cond_131
    const/4 v8, 0x0

    goto :goto_10b

    .restart local v8    # "advance":Z
    :cond_133
    move v2, v4

    .line 518
    goto :goto_10e

    :cond_135
    move v2, v4

    .line 524
    goto :goto_121

    .line 537
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_137
    const/4 v8, 0x0

    goto/16 :goto_31

    .line 538
    .restart local v8    # "advance":Z
    :cond_13a
    const/4 v2, -0x2

    goto/16 :goto_34

    .line 548
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v20    # "otherRunLevel":I
    :cond_13d
    const/4 v13, 0x0

    goto/16 :goto_5e

    .line 550
    .restart local v13    # "otherRunIsRtl":Z
    :cond_140
    const/4 v8, 0x0

    goto/16 :goto_63

    :cond_143
    move v14, v12

    .line 552
    goto/16 :goto_6b

    :cond_146
    move v12, v11

    .line 555
    goto/16 :goto_74

    .line 566
    :cond_149
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_153

    .line 568
    if-eqz v8, :cond_156

    move/from16 v18, v11

    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v20    # "otherRunLevel":I
    :cond_153
    :goto_153
    move/from16 v19, v18

    .line 595
    .end local v18    # "newCaret":I
    .restart local v19    # "newCaret":I
    goto :goto_127

    .end local v19    # "newCaret":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v18    # "newCaret":I
    .restart local v20    # "otherRunLevel":I
    :cond_156
    move/from16 v18, v12

    .line 568
    goto :goto_153

    .line 573
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v20    # "otherRunLevel":I
    :cond_159
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_16a

    .line 577
    if-eqz v8, :cond_167

    move-object/from16 v0, p0

    iget v2, v0, mLen:I

    add-int/lit8 v18, v2, 0x1

    .line 578
    :goto_166
    goto :goto_153

    .line 577
    :cond_167
    const/16 v18, -0x1

    goto :goto_166

    .line 589
    :cond_16a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_153

    .line 590
    if-eqz v8, :cond_175

    move/from16 v18, v16

    :goto_174
    goto :goto_153

    :cond_175
    move/from16 v18, v17

    goto :goto_174
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 25
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 287
    if-eqz p2, :cond_8

    add-int/lit8 v18, p1, -0x1

    .line 288
    .local v18, "target":I
    :goto_4
    if-gez v18, :cond_b

    .line 289
    const/4 v12, 0x0

    .line 368
    :cond_7
    :goto_7
    return v12

    .end local v18    # "target":I
    :cond_8
    move/from16 v18, p1

    .line 287
    goto :goto_4

    .line 292
    .restart local v18    # "target":I
    :cond_b
    const/4 v12, 0x0

    .line 294
    .local v12, "h":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, mHasTabs:Z

    if-nez v1, :cond_44

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_2b

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, mLen:I

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v12

    goto :goto_7

    .line 298
    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_44

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, mLen:I

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v12

    goto :goto_7

    .line 303
    :cond_44
    move-object/from16 v0, p0

    iget-object v10, v0, mChars:[C

    .line 304
    .local v10, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    .line 305
    .local v17, "runs":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_51
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_7

    .line 306
    aget v16, v17, v13

    .line 307
    .local v16, "runStart":I
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v15, v16, v1

    .line 308
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, mLen:I

    if-le v15, v1, :cond_6c

    .line 309
    move-object/from16 v0, p0

    iget v15, v0, mLen:I

    .line 311
    :cond_6c
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_db

    const/4 v5, 0x1

    .line 313
    .local v5, "runIsRtl":Z
    :goto_76
    move/from16 v2, v16

    .line 314
    .local v2, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, mHasTabs:Z

    if-eqz v1, :cond_dd

    move/from16 v4, v16

    .local v4, "j":I
    :goto_80
    if-gt v4, v15, :cond_152

    .line 315
    const/4 v11, 0x0

    .line 316
    .local v11, "codept":I
    const/4 v8, 0x0

    .line 318
    .local v8, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, mHasTabs:Z

    if-eqz v1, :cond_ae

    if-ge v4, v15, :cond_ae

    .line 319
    aget-char v11, v10, v4

    .line 320
    const v1, 0xd800

    if-lt v11, v1, :cond_ae

    const v1, 0xdc00

    if-ge v11, v1, :cond_ae

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_ae

    .line 321
    invoke-static {v10, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    .line 322
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v11, v1, :cond_df

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v11, v1, :cond_df

    .line 323
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v1, v11}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 331
    :cond_ae
    if-eq v4, v15, :cond_b6

    const/16 v1, 0x9

    if-eq v11, v1, :cond_b6

    if-eqz v8, :cond_e6

    .line 332
    :cond_b6
    move/from16 v0, v18

    if-lt v0, v2, :cond_e9

    move/from16 v0, v18

    if-ge v0, v4, :cond_e9

    const/4 v14, 0x1

    .line 334
    .local v14, "inSegment":Z
    :goto_bf
    move-object/from16 v0, p0

    iget v1, v0, mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_eb

    const/4 v1, 0x1

    :goto_c7
    if-ne v1, v5, :cond_ed

    const/4 v7, 0x1

    .line 335
    .local v7, "advance":Z
    :goto_ca
    if-eqz v14, :cond_ef

    if-eqz v7, :cond_ef

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 336
    invoke-direct/range {v1 .. v6}, measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    goto/16 :goto_7

    .line 311
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v7    # "advance":Z
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_db
    const/4 v5, 0x0

    goto :goto_76

    .restart local v2    # "segstart":I
    .restart local v5    # "runIsRtl":Z
    :cond_dd
    move v4, v15

    .line 314
    goto :goto_80

    .line 324
    .restart local v4    # "j":I
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v11    # "codept":I
    :cond_df
    const v1, 0xffff

    if-le v11, v1, :cond_ae

    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 314
    :cond_e6
    :goto_e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 332
    :cond_e9
    const/4 v14, 0x0

    goto :goto_bf

    .line 334
    .restart local v14    # "inSegment":Z
    :cond_eb
    const/4 v1, 0x0

    goto :goto_c7

    :cond_ed
    const/4 v7, 0x0

    goto :goto_ca

    .restart local v7    # "advance":Z
    :cond_ef
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 339
    invoke-direct/range {v1 .. v6}, measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v19

    .line 340
    .local v19, "w":F
    if-eqz v7, :cond_10a

    .end local v19    # "w":F
    :goto_fa
    add-float v12, v12, v19

    .line 342
    if-eqz v14, :cond_110

    .line 343
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    goto/16 :goto_7

    .line 340
    .restart local v19    # "w":F
    :cond_10a
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_fa

    .line 346
    .end local v19    # "w":F
    :cond_110
    const/16 v1, 0x9

    if-ne v11, v1, :cond_12f

    .line 347
    move/from16 v0, p1

    if-eq v0, v4, :cond_7

    .line 350
    move-object/from16 v0, p0

    iget v1, v0, mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, nextTab(F)F

    move-result v3

    mul-float v12, v1, v3

    .line 351
    move/from16 v0, v18

    if-eq v0, v4, :cond_7

    .line 356
    :cond_12f
    if-eqz v8, :cond_14f

    .line 357
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, ascent(I)F

    move-result v9

    .line 358
    .local v9, "bmAscent":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v3, v9

    mul-float/2addr v1, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v1, v3

    .line 359
    .local v20, "wid":F
    move-object/from16 v0, p0

    iget v1, v0, mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v20

    add-float/2addr v12, v1

    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 363
    .end local v9    # "bmAscent":F
    .end local v20    # "wid":F
    :cond_14f
    add-int/lit8 v2, v4, 0x1

    goto :goto_e6

    .line 305
    .end local v7    # "advance":Z
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_152
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_51
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 4
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 270
    iget v0, p0, mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .registers 3
    .param p1, "h"    # F

    .prologue
    .line 1033
    iget-object v0, p0, mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_b

    .line 1034
    iget-object v0, p0, mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    .line 1036
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    goto :goto_a
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .registers 18
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;

    .prologue
    .line 136
    iput-object p1, p0, mPaint:Landroid/text/TextPaint;

    .line 137
    iput-object p2, p0, mText:Ljava/lang/CharSequence;

    .line 138
    iput p3, p0, mStart:I

    .line 139
    sub-int v7, p4, p3

    iput v7, p0, mLen:I

    .line 140
    iput p5, p0, mDir:I

    .line 141
    iput-object p6, p0, mDirections:Landroid/text/Layout$Directions;

    .line 142
    iget-object v7, p0, mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_1a

    .line 143
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_1a
    move/from16 v0, p7

    iput-boolean v0, p0, mHasTabs:Z

    .line 146
    const/4 v7, 0x0

    iput-object v7, p0, mSpanned:Landroid/text/Spanned;

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_39

    move-object v7, p2

    .line 150
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, mSpanned:Landroid/text/Spanned;

    .line 151
    iget-object v7, p0, mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 152
    iget-object v7, p0, mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_8d

    const/4 v3, 0x1

    .line 155
    :cond_39
    :goto_39
    if-nez v3, :cond_41

    if-nez p7, :cond_41

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_8f

    :cond_41
    const/4 v7, 0x1

    :goto_42
    iput-boolean v7, p0, mCharsValid:Z

    .line 157
    iget-boolean v7, p0, mCharsValid:Z

    if-eqz v7, :cond_93

    .line 158
    iget-object v7, p0, mChars:[C

    if-eqz v7, :cond_53

    iget-object v7, p0, mChars:[C

    array-length v7, v7

    iget v8, p0, mLen:I

    if-ge v7, v8, :cond_5b

    .line 159
    :cond_53
    iget v7, p0, mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    iput-object v7, p0, mChars:[C

    .line 161
    :cond_5b
    iget-object v7, p0, mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 162
    if-eqz v3, :cond_93

    .line 168
    iget-object v1, p0, mChars:[C

    .line 169
    .local v1, "chars":[C
    move v4, p3

    .local v4, "i":I
    :goto_66
    if-ge v4, p4, :cond_93

    .line 170
    iget-object v7, p0, mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 171
    .local v5, "inext":I
    iget-object v7, p0, mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 173
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 174
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, "j":I
    sub-int v2, v5, p3

    .local v2, "e":I
    :goto_83
    if-ge v6, v2, :cond_91

    .line 175
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 152
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_8d
    const/4 v3, 0x0

    goto :goto_39

    .line 155
    :cond_8f
    const/4 v7, 0x0

    goto :goto_42

    .line 169
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_91
    move v4, v5

    goto :goto_66

    .line 181
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_93
    move-object/from16 v0, p8

    iput-object v0, p0, mTabs:Landroid/text/Layout$TabStops;

    .line 182
    return-void
.end method
