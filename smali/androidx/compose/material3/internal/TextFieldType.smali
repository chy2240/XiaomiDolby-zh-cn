.class public final enum Landroidx/compose/material3/internal/TextFieldType;
.super Ljava/lang/Enum;
.source "TextFieldImpl.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material3/internal/TextFieldType;

.field public static final enum Filled:Landroidx/compose/material3/internal/TextFieldType;

.field public static final enum Outlined:Landroidx/compose/material3/internal/TextFieldType;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material3/internal/TextFieldType;
    .locals 2

    .line 0
    sget-object v0, Landroidx/compose/material3/internal/TextFieldType;->Filled:Landroidx/compose/material3/internal/TextFieldType;

    sget-object v1, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    filled-new-array {v0, v1}, [Landroidx/compose/material3/internal/TextFieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Landroidx/compose/material3/internal/TextFieldType;

    const-string v1, "Filled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/internal/TextFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/internal/TextFieldType;->Filled:Landroidx/compose/material3/internal/TextFieldType;

    .line 73
    new-instance v0, Landroidx/compose/material3/internal/TextFieldType;

    const-string v1, "Outlined"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/internal/TextFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    invoke-static {}, Landroidx/compose/material3/internal/TextFieldType;->$values()[Landroidx/compose/material3/internal/TextFieldType;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/internal/TextFieldType;->$VALUES:[Landroidx/compose/material3/internal/TextFieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/internal/TextFieldType;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/material3/internal/TextFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/TextFieldType;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/internal/TextFieldType;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material3/internal/TextFieldType;->$VALUES:[Landroidx/compose/material3/internal/TextFieldType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/internal/TextFieldType;

    return-object v0
.end method
