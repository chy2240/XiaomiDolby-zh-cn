.class public final Landroidx/compose/ui/text/intl/Locale;
.super Ljava/lang/Object;
.source "Locale.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/text/intl/Locale$Companion;


# instance fields
.field private final platformLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/text/intl/Locale$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/Locale$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {}, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->getPlatformLocaleDelegate()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->parseLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/intl/Locale;

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Landroidx/compose/ui/text/intl/Locale;

    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getPlatformLocale()Ljava/util/Locale;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toLanguageTag()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    invoke-static {p0}, Landroidx/compose/ui/text/intl/PlatformLocale_jvmKt;->getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
