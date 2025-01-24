.class abstract Landroidx/compose/ui/focus/FocusInteropUtils;
.super Ljava/lang/Object;
.source "FocusInteropUtils.android.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusInteropUtils$Companion;

.field private static final tempCoordinates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusInteropUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusInteropUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusInteropUtils;->Companion:Landroidx/compose/ui/focus/FocusInteropUtils$Companion;

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [I

    sput-object v0, Landroidx/compose/ui/focus/FocusInteropUtils;->tempCoordinates:[I

    return-void
.end method

.method public static final synthetic access$getTempCoordinates$cp()[I
    .locals 1

    .line 27
    sget-object v0, Landroidx/compose/ui/focus/FocusInteropUtils;->tempCoordinates:[I

    return-object v0
.end method
