.class public final Landroidx/compose/material3/internal/MenuPosition;
.super Ljava/lang/Object;
.source "MenuPosition.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/internal/MenuPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/internal/MenuPosition;

    invoke-direct {v0}, Landroidx/compose/material3/internal/MenuPosition;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/MenuPosition;->INSTANCE:Landroidx/compose/material3/internal/MenuPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic bottomToAnchorTop$default(Landroidx/compose/material3/internal/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/internal/MenuPosition$Vertical;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MenuPosition;->bottomToAnchorTop(I)Landroidx/compose/material3/internal/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic endToAnchorEnd$default(Landroidx/compose/material3/internal/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MenuPosition;->endToAnchorEnd(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic leftToWindowLeft$default(Landroidx/compose/material3/internal/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MenuPosition;->leftToWindowLeft(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rightToWindowRight$default(Landroidx/compose/material3/internal/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MenuPosition;->rightToWindowRight(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic startToAnchorStart$default(Landroidx/compose/material3/internal/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MenuPosition;->startToAnchorStart(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic topToAnchorBottom$default(Landroidx/compose/material3/internal/MenuPosition;IILjava/lang/Object;)Landroidx/compose/material3/internal/MenuPosition$Vertical;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/MenuPosition;->topToAnchorBottom(I)Landroidx/compose/material3/internal/MenuPosition$Vertical;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bottomToAnchorTop(I)Landroidx/compose/material3/internal/MenuPosition$Vertical;
    .locals 2

    .line 142
    new-instance p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    .line 143
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    .line 142
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    return-object p0
.end method

.method public final bottomToWindowBottom(I)Landroidx/compose/material3/internal/MenuPosition$Vertical;
    .locals 1

    .line 179
    new-instance p0, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    .line 180
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0, p1}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;I)V

    return-object p0
.end method

.method public final endToAnchorEnd(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 2

    .line 94
    new-instance p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    .line 95
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 94
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V

    return-object p0
.end method

.method public final leftToWindowLeft(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 1

    .line 108
    new-instance p0, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    .line 109
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

    invoke-virtual {v0}, Landroidx/compose/ui/AbsoluteAlignment;->getLeft()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 108
    invoke-direct {p0, v0, p1}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;I)V

    return-object p0
.end method

.method public final rightToWindowRight(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 1

    .line 121
    new-instance p0, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    .line 122
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

    invoke-virtual {v0}, Landroidx/compose/ui/AbsoluteAlignment;->getRight()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0, p1}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;I)V

    return-object p0
.end method

.method public final startToAnchorStart(I)Landroidx/compose/material3/internal/MenuPosition$Horizontal;
    .locals 2

    .line 80
    new-instance p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    .line 81
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    .line 80
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V

    return-object p0
.end method

.method public final topToAnchorBottom(I)Landroidx/compose/material3/internal/MenuPosition$Vertical;
    .locals 2

    .line 131
    new-instance p0, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    .line 132
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    .line 131
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    return-object p0
.end method

.method public final topToWindowTop(I)Landroidx/compose/material3/internal/MenuPosition$Vertical;
    .locals 1

    .line 166
    new-instance p0, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    .line 167
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0, p1}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;I)V

    return-object p0
.end method
