Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFFC9D966
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 00:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xraRBMiuVB02ZpRhhQr03VMCUhipsDwuKkB5khO8h3E=; b=j7mSMz6rQ2xGLD
	Ltbn1CYWHz30nyDJp0m9bbyjsefCxQdDCi/D3hT8fuU16kb/WTdOdT/WaW7XoRLSDfqHwwoqAMzIP
	f+UJD/GG9at64lNjLCoLylipyAt4v27LQG2BI4zX1NoYoVoU1PYyLdbHSWTvZ/eqHTyvjXtj9Jqhk
	Ea1juLvprpq4XOsNe8kFzjnHTOgtM4NUrTPReFheQmaZFTCbz/oVdDtSK0eVqbNn/GRUA0igok716
	euy3X7m7VoTao7CyLQSAGhJdgMSuGu/wAeIsxKa0q5+8AKruxCgapTzUyoGUCoKTstKBPs77SxdId
	IPxhLUsnu3hlUijWaKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NjX-00061j-6H; Mon, 26 Aug 2019 22:45:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NjE-0005jD-RH; Mon, 26 Aug 2019 22:44:50 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 186C020644;
 Mon, 26 Aug 2019 22:44:46 +0000 (UTC)
Date: Mon, 26 Aug 2019 18:44:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: [PATCH 01/11] ftrace: move recordmcount tools to scripts/ftrace
Message-ID: <20190826184444.09334ae9@gandalf.local.home>
In-Reply-To: <20190825132330.5015-2-changbin.du@gmail.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
 <20190825132330.5015-2-changbin.du@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_154448_929036_43A127E2 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-parisc@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 "John F . Reiser" <jreiser@BitWagon.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Jessica Yu <jeyu@kernel.org>,
 sparclinux@vger.kernel.org, linux-kbuild@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 25 Aug 2019 21:23:20 +0800
Changbin Du <changbin.du@gmail.com> wrote:

> Move ftrace tools to its own directory. We will add another tool later.
> 
> Cc: John F. Reiser <jreiser@BitWagon.com>
> Signed-off-by: Changbin Du <changbin.du@gmail.com>
> ---
>  scripts/.gitignore                   |  1 -
>  scripts/Makefile                     |  2 +-
>  scripts/Makefile.build               | 10 +++++-----
>  scripts/ftrace/.gitignore            |  4 ++++
>  scripts/ftrace/Makefile              |  4 ++++
>  scripts/{ => ftrace}/recordmcount.c  |  0
>  scripts/{ => ftrace}/recordmcount.h  |  0
>  scripts/{ => ftrace}/recordmcount.pl |  0
>  8 files changed, 14 insertions(+), 7 deletions(-)
>  create mode 100644 scripts/ftrace/.gitignore
>  create mode 100644 scripts/ftrace/Makefile
>  rename scripts/{ => ftrace}/recordmcount.c (100%)
>  rename scripts/{ => ftrace}/recordmcount.h (100%)
>  rename scripts/{ => ftrace}/recordmcount.pl (100%)
>  mode change 100755 => 100644

Note, we are in the process of merging recordmcount with objtool. It
would be better to continue from that work.

 http://lkml.kernel.org/r/2767f55f4a5fbf30ba0635aed7a9c5ee92ac07dd.1563992889.git.mhelsley@vmware.com

-- Steve

> 
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 17f8cef88fa8..1b5b5d595d80 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -6,7 +6,6 @@ conmakehash
>  kallsyms
>  pnmtologo
>  unifdef
> -recordmcount
>  sortextable
>  asn1_compiler
>  extract-cert
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 16bcb8087899..d5992def49a8 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -14,7 +14,6 @@ hostprogs-$(CONFIG_BUILD_BIN2C)  += bin2c
>  hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
>  hostprogs-$(CONFIG_LOGO)         += pnmtologo
>  hostprogs-$(CONFIG_VT)           += conmakehash
> -hostprogs-$(BUILD_C_RECORDMCOUNT) += recordmcount
>  hostprogs-$(CONFIG_BUILDTIME_EXTABLE_SORT) += sortextable
>  hostprogs-$(CONFIG_ASN1)	 += asn1_compiler
>  hostprogs-$(CONFIG_MODULE_SIG)	 += sign-file
> @@ -34,6 +33,7 @@ hostprogs-y += unifdef
>  subdir-$(CONFIG_GCC_PLUGINS) += gcc-plugins
>  subdir-$(CONFIG_MODVERSIONS) += genksyms
>  subdir-$(CONFIG_SECURITY_SELINUX) += selinux
> +subdir-$(CONFIG_FTRACE) += ftrace
>  
>  # Let clean descend into subdirs
>  subdir-	+= basic dtc gdb kconfig mod package
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 2f66ed388d1c..67558983c518 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -188,18 +188,18 @@ endif
>  # files, including recordmcount.
>  sub_cmd_record_mcount =					\
>  	if [ $(@) != "scripts/mod/empty.o" ]; then	\
> -		$(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)";	\
> +		$(objtree)/scripts/ftrace/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)"; \
>  	fi;
> -recordmcount_source := $(srctree)/scripts/recordmcount.c \
> -		    $(srctree)/scripts/recordmcount.h
> +recordmcount_source := $(srctree)/scripts/ftrace/recordmcount.c \
> +		       $(srctree)/scripts/ftrace/recordmcount.h
>  else
> -sub_cmd_record_mcount = perl $(srctree)/scripts/recordmcount.pl "$(ARCH)" \
> +sub_cmd_record_mcount = perl $(srctree)/scripts/ftrace/recordmcount.pl "$(ARCH)" \
>  	"$(if $(CONFIG_CPU_BIG_ENDIAN),big,little)" \
>  	"$(if $(CONFIG_64BIT),64,32)" \
>  	"$(OBJDUMP)" "$(OBJCOPY)" "$(CC) $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS)" \
>  	"$(LD) $(KBUILD_LDFLAGS)" "$(NM)" "$(RM)" "$(MV)" \
>  	"$(if $(part-of-module),1,0)" "$(@)";
> -recordmcount_source := $(srctree)/scripts/recordmcount.pl
> +recordmcount_source := $(srctree)/scripts/ftrace/recordmcount.pl
>  endif # BUILD_C_RECORDMCOUNT
>  cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),	\
>  	$(sub_cmd_record_mcount))
> diff --git a/scripts/ftrace/.gitignore b/scripts/ftrace/.gitignore
> new file mode 100644
> index 000000000000..54d582c8faad
> --- /dev/null
> +++ b/scripts/ftrace/.gitignore
> @@ -0,0 +1,4 @@
> +#
> +# Generated files
> +#
> +recordmcount
> diff --git a/scripts/ftrace/Makefile b/scripts/ftrace/Makefile
> new file mode 100644
> index 000000000000..6797e51473e5
> --- /dev/null
> +++ b/scripts/ftrace/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +hostprogs-$(BUILD_C_RECORDMCOUNT) += recordmcount
> +always         := $(hostprogs-y)
> diff --git a/scripts/recordmcount.c b/scripts/ftrace/recordmcount.c
> similarity index 100%
> rename from scripts/recordmcount.c
> rename to scripts/ftrace/recordmcount.c
> diff --git a/scripts/recordmcount.h b/scripts/ftrace/recordmcount.h
> similarity index 100%
> rename from scripts/recordmcount.h
> rename to scripts/ftrace/recordmcount.h
> diff --git a/scripts/recordmcount.pl b/scripts/ftrace/recordmcount.pl
> old mode 100755
> new mode 100644
> similarity index 100%
> rename from scripts/recordmcount.pl
> rename to scripts/ftrace/recordmcount.pl


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
