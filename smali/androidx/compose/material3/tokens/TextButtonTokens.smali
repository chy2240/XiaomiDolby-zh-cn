.class public final Landroidx/compose/material3/tokens/TextButtonTokens;
.super Ljava/lang/Object;
.source "TextButtonTokens.kt"


# static fields
.field private static final DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledContainerOpacity:F

.field private static final DisabledIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledIconOpacity:F

.field private static final DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledLabelOpacity:F

.field private static final FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FocusedLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoveredLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/TextButtonTokens;

.field private static final IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final LabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/TextButtonTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/TextButtonTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/TextButtonTokens;

    .line 20
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v0, 0x3dcccccd    # 0.1f

    .line 21
    sput v0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledContainerOpacity:F

    .line 22
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v1, 0x3ec28f5c    # 0.38f

    .line 23
    sput v1, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledIconOpacity:F

    .line 24
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 25
    sput v1, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledLabelOpacity:F

    .line 26
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 27
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->FocusedLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 29
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->HoveredLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 31
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->LabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 33
    sput-object v0, Landroidx/compose/material3/tokens/TextButtonTokens;->PressedLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisabledLabelColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    .line 24
    sget-object p0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledLabelOpacity()F
    .locals 0

    .line 25
    sget p0, Landroidx/compose/material3/tokens/TextButtonTokens;->DisabledLabelOpacity:F

    return p0
.end method
