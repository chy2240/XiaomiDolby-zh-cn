.class public final Landroidx/navigation/NavInflater;
.super Ljava/lang/Object;
.source "NavInflater.kt"


# static fields
.field public static final Companion:Landroidx/navigation/NavInflater$Companion;

.field private static final sTmpValue:Ljava/lang/ThreadLocal;


# instance fields
.field private final context:Landroid/content/Context;

.field private final navigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavInflater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavInflater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavInflater;->Companion:Landroidx/navigation/NavInflater$Companion;

    .line 348
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Landroidx/navigation/NavInflater;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method
