.class public final Landroidx/compose/material3/tokens/StandardIconButtonTokens;
.super Ljava/lang/Object;
.source "IconButtonTokens.kt"


# static fields
.field private static final Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledOpacity:F

.field private static final FocusedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoveredColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/StandardIconButtonTokens;

.field private static final PressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedFocusedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHoveredColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedPressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedFocusedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHoveredColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedPressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/StandardIconButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardIconButtonTokens;

    .line 22
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v1, 0x3ec28f5c    # 0.38f

    .line 23
    sput v1, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->DisabledOpacity:F

    .line 24
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->FocusedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 25
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->HoveredColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 27
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->PressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->SelectedFocusedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 29
    sput-object v1, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->SelectedHoveredColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    sput-object v1, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->SelectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 31
    sput-object v1, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->SelectedPressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->UnselectedFocusedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 33
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->UnselectedHoveredColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 34
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->UnselectedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 35
    sput-object v0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->UnselectedPressedColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 26
    sget-object p0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 22
    sget-object p0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledOpacity()F
    .locals 0

    .line 23
    sget p0, Landroidx/compose/material3/tokens/StandardIconButtonTokens;->DisabledOpacity:F

    return p0
.end method
