.class public final Landroidx/compose/material3/ColorScheme;
.super Ljava/lang/Object;
.source "ColorScheme.kt"


# instance fields
.field private final background:J

.field private defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field private defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

.field private defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

.field private defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

.field private defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field private defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

.field private final error:J

.field private final errorContainer:J

.field private final inverseOnSurface:J

.field private final inversePrimary:J

.field private final inverseSurface:J

.field private final onBackground:J

.field private final onError:J

.field private final onErrorContainer:J

.field private final onPrimary:J

.field private final onPrimaryContainer:J

.field private final onSecondary:J

.field private final onSecondaryContainer:J

.field private final onSurface:J

.field private final onSurfaceVariant:J

.field private final onTertiary:J

.field private final onTertiaryContainer:J

.field private final outline:J

.field private final outlineVariant:J

.field private final primary:J

.field private final primaryContainer:J

.field private final scrim:J

.field private final secondary:J

.field private final secondaryContainer:J

.field private final surface:J

.field private final surfaceBright:J

.field private final surfaceContainer:J

.field private final surfaceContainerHigh:J

.field private final surfaceContainerHighest:J

.field private final surfaceContainerLow:J

.field private final surfaceContainerLowest:J

.field private final surfaceDim:J

.field private final surfaceTint:J

.field private final surfaceVariant:J

.field private final tertiary:J

.field private final tertiaryContainer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 123
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    move-wide v1, p3

    .line 124
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    move-wide v1, p5

    .line 125
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    move-wide v1, p7

    .line 126
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    move-wide v1, p9

    .line 127
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    move-wide v1, p11

    .line 128
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    move-wide/from16 v1, p13

    .line 129
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    move-wide/from16 v1, p15

    .line 130
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide/from16 v1, p17

    .line 131
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    move-wide/from16 v1, p19

    .line 132
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    move-wide/from16 v1, p21

    .line 133
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    move-wide/from16 v1, p23

    .line 134
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    move-wide/from16 v1, p25

    .line 135
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    move-wide/from16 v1, p27

    .line 136
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->background:J

    move-wide/from16 v1, p29

    .line 137
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    move-wide/from16 v1, p31

    .line 138
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    move-wide/from16 v1, p33

    .line 139
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    move-wide/from16 v1, p35

    .line 140
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    move-wide/from16 v1, p37

    .line 141
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    move-wide/from16 v1, p39

    .line 142
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    move-wide/from16 v1, p41

    .line 143
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    move-wide/from16 v1, p43

    .line 144
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    move-wide/from16 v1, p45

    .line 145
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->error:J

    move-wide/from16 v1, p47

    .line 146
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    move-wide/from16 v1, p49

    .line 147
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    move-wide/from16 v1, p51

    .line 148
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    move-wide/from16 v1, p53

    .line 149
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    move-wide/from16 v1, p55

    .line 150
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    move-wide/from16 v1, p57

    .line 151
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    move-wide/from16 v1, p59

    .line 152
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    move-wide/from16 v1, p61

    .line 153
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    move-wide/from16 v1, p63

    .line 154
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    move-wide/from16 v1, p65

    .line 155
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    move-wide/from16 v1, p67

    .line 156
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    move-wide/from16 v1, p69

    .line 157
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    move-wide/from16 v1, p71

    .line 158
    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p72}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final getBackground-0d7_KjU()J
    .locals 2

    .line 136
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->background:J

    return-wide v0
.end method

.method public final getDefaultButtonColorsCached$material3_release()Landroidx/compose/material3/ButtonColors;
    .locals 0

    .line 460
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultIconButtonColorsCached$material3_release()Landroidx/compose/material3/IconButtonColors;
    .locals 0

    .line 492
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-object p0
.end method

.method public final getDefaultMenuItemColorsCached$material3_release()Landroidx/compose/material3/MenuItemColors;
    .locals 0

    .line 508
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    return-object p0
.end method

.method public final getDefaultOutlinedTextFieldColorsCached$material3_release()Landroidx/compose/material3/TextFieldColors;
    .locals 0

    .line 526
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-object p0
.end method

.method public final getDefaultSliderColorsCached$material3_release()Landroidx/compose/material3/SliderColors;
    .locals 0

    .line 522
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

    return-object p0
.end method

.method public final getDefaultTextButtonColorsCached$material3_release()Landroidx/compose/material3/ButtonColors;
    .locals 0

    .line 464
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-object p0
.end method

.method public final getDefaultTextFieldColorsCached$material3_release()Landroidx/compose/material3/TextFieldColors;
    .locals 0

    .line 527
    iget-object p0, p0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-object p0
.end method

.method public final getError-0d7_KjU()J
    .locals 2

    .line 145
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->error:J

    return-wide v0
.end method

.method public final getErrorContainer-0d7_KjU()J
    .locals 2

    .line 147
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    return-wide v0
.end method

.method public final getInverseOnSurface-0d7_KjU()J
    .locals 2

    .line 144
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    return-wide v0
.end method

.method public final getInversePrimary-0d7_KjU()J
    .locals 2

    .line 127
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    return-wide v0
.end method

.method public final getInverseSurface-0d7_KjU()J
    .locals 2

    .line 143
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    return-wide v0
.end method

.method public final getOnBackground-0d7_KjU()J
    .locals 2

    .line 137
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    return-wide v0
.end method

.method public final getOnError-0d7_KjU()J
    .locals 2

    .line 146
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    return-wide v0
.end method

.method public final getOnErrorContainer-0d7_KjU()J
    .locals 2

    .line 148
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    return-wide v0
.end method

.method public final getOnPrimary-0d7_KjU()J
    .locals 2

    .line 124
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    return-wide v0
.end method

.method public final getOnPrimaryContainer-0d7_KjU()J
    .locals 2

    .line 126
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    return-wide v0
.end method

.method public final getOnSecondary-0d7_KjU()J
    .locals 2

    .line 129
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    return-wide v0
.end method

.method public final getOnSecondaryContainer-0d7_KjU()J
    .locals 2

    .line 131
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    return-wide v0
.end method

.method public final getOnSurface-0d7_KjU()J
    .locals 2

    .line 139
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    return-wide v0
.end method

.method public final getOnSurfaceVariant-0d7_KjU()J
    .locals 2

    .line 141
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    return-wide v0
.end method

.method public final getOnTertiary-0d7_KjU()J
    .locals 2

    .line 133
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    return-wide v0
.end method

.method public final getOnTertiaryContainer-0d7_KjU()J
    .locals 2

    .line 135
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    return-wide v0
.end method

.method public final getOutline-0d7_KjU()J
    .locals 2

    .line 149
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    return-wide v0
.end method

.method public final getOutlineVariant-0d7_KjU()J
    .locals 2

    .line 150
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    return-wide v0
.end method

.method public final getPrimary-0d7_KjU()J
    .locals 2

    .line 123
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    return-wide v0
.end method

.method public final getPrimaryContainer-0d7_KjU()J
    .locals 2

    .line 125
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    return-wide v0
.end method

.method public final getScrim-0d7_KjU()J
    .locals 2

    .line 151
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    return-wide v0
.end method

.method public final getSecondary-0d7_KjU()J
    .locals 2

    .line 128
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    return-wide v0
.end method

.method public final getSecondaryContainer-0d7_KjU()J
    .locals 2

    .line 130
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    return-wide v0
.end method

.method public final getSurface-0d7_KjU()J
    .locals 2

    .line 138
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    return-wide v0
.end method

.method public final getSurfaceBright-0d7_KjU()J
    .locals 2

    .line 152
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    return-wide v0
.end method

.method public final getSurfaceContainer-0d7_KjU()J
    .locals 2

    .line 154
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    return-wide v0
.end method

.method public final getSurfaceContainerHigh-0d7_KjU()J
    .locals 2

    .line 155
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    return-wide v0
.end method

.method public final getSurfaceContainerHighest-0d7_KjU()J
    .locals 2

    .line 156
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    return-wide v0
.end method

.method public final getSurfaceContainerLow-0d7_KjU()J
    .locals 2

    .line 157
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    return-wide v0
.end method

.method public final getSurfaceContainerLowest-0d7_KjU()J
    .locals 2

    .line 158
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    return-wide v0
.end method

.method public final getSurfaceDim-0d7_KjU()J
    .locals 2

    .line 153
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    return-wide v0
.end method

.method public final getSurfaceTint-0d7_KjU()J
    .locals 2

    .line 142
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    return-wide v0
.end method

.method public final getSurfaceVariant-0d7_KjU()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    return-wide v0
.end method

.method public final getTertiary-0d7_KjU()J
    .locals 2

    .line 132
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    return-wide v0
.end method

.method public final getTertiaryContainer-0d7_KjU()J
    .locals 2

    .line 134
    iget-wide v0, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    return-wide v0
.end method

.method public final setDefaultButtonColorsCached$material3_release(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    .line 460
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultIconButtonColorsCached$material3_release(Landroidx/compose/material3/IconButtonColors;)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    return-void
.end method

.method public final setDefaultMenuItemColorsCached$material3_release(Landroidx/compose/material3/MenuItemColors;)V
    .locals 0

    .line 508
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    return-void
.end method

.method public final setDefaultOutlinedTextFieldColorsCached$material3_release(Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    .line 526
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-void
.end method

.method public final setDefaultSliderColorsCached$material3_release(Landroidx/compose/material3/SliderColors;)V
    .locals 0

    .line 522
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

    return-void
.end method

.method public final setDefaultTextButtonColorsCached$material3_release(Landroidx/compose/material3/ButtonColors;)V
    .locals 0

    .line 464
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    return-void
.end method

.method public final setDefaultTextFieldColorsCached$material3_release(Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorScheme(primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, "onPrimary="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, "primaryContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "onPrimaryContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, "inversePrimary="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, "secondary="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    const-string v1, "onSecondary="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, "secondaryContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, "onSecondaryContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, "tertiary="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, "onTertiary="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, "tertiaryContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "onTertiaryContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, "background="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->background:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, "onBackground="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "surface="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, "onSurface="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "surfaceVariant="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, "onSurfaceVariant="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "surfaceTint="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, "inverseSurface="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "inverseOnSurface="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, "error="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->error:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "onError="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, "errorContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, "onErrorContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, "outline="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, "outlineVariant="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, "scrim="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "surfaceBright="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, "surfaceDim="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, "surfaceContainer="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    const-string v1, "surfaceContainerHigh="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, "surfaceContainerHighest="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "surfaceContainerLow="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "surfaceContainerLowest="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
