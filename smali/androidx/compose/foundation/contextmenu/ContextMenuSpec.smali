.class public final Landroidx/compose/foundation/contextmenu/ContextMenuSpec;
.super Ljava/lang/Object;
.source "ContextMenuUi.android.kt"


# static fields
.field private static final ContainerWidthMax:F

.field private static final ContainerWidthMin:F

.field private static final CornerRadius:F

.field private static final FontSize:J

.field private static final FontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field private static final HorizontalPadding:F

.field public static final INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

.field private static final IconSize:F

.field private static final LabelHorizontalTextAlignment:I

.field private static final LabelVerticalTextAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field private static final LetterSpacing:J

.field private static final LineHeight:J

.field private static final ListItemHeight:F

.field private static final MenuContainerElevation:F

.field private static final VerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    invoke-direct {v0}, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;-><init>()V

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    const/16 v0, 0x70

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 71
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMin:F

    const/16 v0, 0x118

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 72
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMax:F

    const/16 v0, 0x30

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 73
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ListItemHeight:F

    const/4 v0, 0x3

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 74
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->MenuContainerElevation:F

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 75
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->CornerRadius:F

    .line 76
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelVerticalTextAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 77
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelHorizontalTextAlignment:I

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 78
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->HorizontalPadding:F

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 79
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->VerticalPadding:F

    const/16 v0, 0x18

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 80
    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->IconSize:F

    const/16 v0, 0xe

    .line 83
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontSize:J

    .line 84
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x14

    .line 85
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LineHeight:J

    const v0, 0x3dcccccd    # 0.1f

    .line 86
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LetterSpacing:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerWidthMax-D9Ej5fM()F
    .locals 0

    .line 72
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMax:F

    return p0
.end method

.method public final getContainerWidthMin-D9Ej5fM()F
    .locals 0

    .line 71
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMin:F

    return p0
.end method

.method public final getCornerRadius-D9Ej5fM()F
    .locals 0

    .line 75
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->CornerRadius:F

    return p0
.end method

.method public final getHorizontalPadding-D9Ej5fM()F
    .locals 0

    .line 78
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->HorizontalPadding:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    .line 80
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->IconSize:F

    return p0
.end method

.method public final getLabelVerticalTextAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    .line 76
    sget-object p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelVerticalTextAlignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method public final getListItemHeight-D9Ej5fM()F
    .locals 0

    .line 73
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ListItemHeight:F

    return p0
.end method

.method public final getMenuContainerElevation-D9Ej5fM()F
    .locals 0

    .line 74
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->MenuContainerElevation:F

    return p0
.end method

.method public final getVerticalPadding-D9Ej5fM()F
    .locals 0

    .line 79
    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->VerticalPadding:F

    return p0
.end method

.method public final textStyle-8_81llA(J)Landroidx/compose/ui/text/TextStyle;
    .locals 33

    move-wide/from16 v1, p1

    .line 91
    sget v20, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelHorizontalTextAlignment:I

    .line 92
    sget-wide v3, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontSize:J

    .line 93
    sget-object v5, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 94
    sget-wide v22, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LineHeight:J

    .line 95
    sget-wide v10, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LetterSpacing:J

    .line 89
    new-instance v32, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v0, v32

    const v30, 0xfd7f78

    const/16 v31, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v32
.end method
