Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584611461A5
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Jan 2020 06:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UD2g3R6EAWCmOv3T2af3YKBLNY0Xvn+xHCncHmLKPFw=; b=MPJu5anFc1xe2nzKXsrg+4CWV
	QbVa5rDqRRpidxAcj8OfCeiKTMGYdyRdXOvqPHwLi/jLEiQKXbx1MGC6m4owwbi2wEmnirOmHTjMn
	Ibtx9TSw9Ah6HXGo/iVrvnLJqW8gVupexWI6x62rTWEX7YCTt95edVeEt2r8I6N4nHSKQZY4BSS8Z
	ui8yuKhS9zY08rucBn3iag3563VYXgc79TqfrmBdVwpTozv57HrbZqF2Lf4KiDvxUKKboz/geL5O3
	MnIyfpn4D743Dx29Yec9Y32dTPVSOPIht4PAdMdjSD2kxEnV6soRiO4DUN64cebeC0CR/d8VXTdjp
	2XYkk+eIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuVIG-0008B2-AP; Thu, 23 Jan 2020 05:44:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuVIC-0008AL-PY
 for linux-riscv@lists.infradead.org; Thu, 23 Jan 2020 05:44:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so1682237wrh.5
 for <linux-riscv@lists.infradead.org>; Wed, 22 Jan 2020 21:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UD2g3R6EAWCmOv3T2af3YKBLNY0Xvn+xHCncHmLKPFw=;
 b=JCtjWNLjaIdA+tOfF5e30N6xC2R7EKBvmaDa2DeLl22ER2d0IuuWLEKyqXmriPYSJE
 u47z7moP4wmVG7uBkdVZheNXzoLQgOfF5vnl6Dad9pS/SUcffBKjsbgts5aTPxM87qWw
 nrH0jvVnL9LRDw/x9wuzLUlsp7y1lkYnqRf61oNVz2sVxuqxYoDgbSb3ap5rqN2dg3tI
 aydMjz7P8ZvJ4EsjW6EsmLSKHW9G1EssOHnior+6cBteMWG6w/IjiMkFD/tT3AnJDEbm
 a/UkkcZpfE5m6P4Jd20fsiCNz3IIhoCAF1ctZIMcgGMRn3blJFZhx73DWnthZyxwI2Mz
 hwPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UD2g3R6EAWCmOv3T2af3YKBLNY0Xvn+xHCncHmLKPFw=;
 b=hDBSjOtF96zL7dq/Pr9qEuUxmLUIYZcShixWVyzHrweLzo+q43cf13PQdPkAfkHMkX
 TEONJSDB4Rx6Oh4cnglJQ8U2B8+gxZDu0+l+r0/N5asl3G6Xo+2eFTBmxuVRMhE6y0iV
 F0QSiTwzzl9JXRanJSkr3omq089LkW7s8SF1OEK9f0OscIkRvohQ9qjTuGx5i87BvGpY
 AcTjYwauPgHtycK06IqEKueLeo4nN5+eqScBOCNVvJac4ZxGYBA2XX/bHinTBkeXmnsT
 t90dGg9VTnRdzPfXrIu53OfpIXpALkZXQYURf/ACpKtS6qnjVdetl4MJbbqij8set3Hg
 KxVg==
X-Gm-Message-State: APjAAAXvaaFT0rTk28UYrbuBXJLT1GyBds8/VBYC6En7WGfST7LDny+I
 /eU7cVdp0Oz+IjyGC3TkRGZYnXh5O5ulVxtzyXbvciRhQds=
X-Google-Smtp-Source: APXvYqyv+KlVKgjZla10G9aq/wBRqNXRZlBj1SqOqrDQKX4hSnOy90LI2wYMDDJ2iA9J2tC+0TnvKzxIf8yQ4C+omcI=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr16455678wrv.0.1579758272249;
 Wed, 22 Jan 2020 21:44:32 -0800 (PST)
MIME-Version: 1.0
References: <20200116143029.31441-1-guoren@kernel.org>
In-Reply-To: <20200116143029.31441-1-guoren@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 23 Jan 2020 11:14:20 +0530
Message-ID: <CAAhSdy0k2gb1+k214dW1Zk-YwvujNdui5GJE3zPb_NhDS9b_Rw@mail.gmail.com>
Subject: Re: [PATCH V2 1/4] riscv: Separate patch for cflags and aflags
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_214436_968051_7FB57057 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <ren_guo@c-sky.com>, Arnd Bergmann <arnd@arndb.de>,
 Atish Patra <atish.patra@wdc.com>, Andreas Schwab <schwab@linux-m68k.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 8:01 PM <guoren@kernel.org> wrote:
>
> From: Guo Ren <ren_guo@c-sky.com>
>
> Use "subst fd" in Makefile is a hack way and it's not convenient
> to add new ISA feature. Just separate them into riscv-march-cflags
> and riscv-march-aflags.
>
> Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> Cc: Anup Patel <Anup.Patel@wdc.com>
> ---
>  arch/riscv/Makefile | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index b9009a2fbaf5..6d09b53cf106 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -35,12 +35,18 @@ else
>  endif
>
>  # ISA string setting
> -riscv-march-$(CONFIG_ARCH_RV32I)       := rv32ima
> -riscv-march-$(CONFIG_ARCH_RV64I)       := rv64ima
> -riscv-march-$(CONFIG_FPU)              := $(riscv-march-y)fd
> -riscv-march-$(CONFIG_RISCV_ISA_C)      := $(riscv-march-y)c
> -KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
> -KBUILD_AFLAGS += -march=$(riscv-march-y)
> +riscv-march-cflags-$(CONFIG_ARCH_RV32I)                := rv32ima
> +riscv-march-cflags-$(CONFIG_ARCH_RV64I)                := rv64ima
> +riscv-march-$(CONFIG_FPU)                      := $(riscv-march-y)fd
> +riscv-march-cflags-$(CONFIG_RISCV_ISA_C)       := $(riscv-march-cflags-y)c
> +
> +riscv-march-aflags-$(CONFIG_ARCH_RV32I)                := rv32ima
> +riscv-march-aflags-$(CONFIG_ARCH_RV64I)                := rv64ima
> +riscv-march-aflags-$(CONFIG_FPU)               := $(riscv-march-aflags-y)fd
> +riscv-march-aflags-$(CONFIG_RISCV_ISA_C)       := $(riscv-march-aflags-y)c
> +
> +KBUILD_CFLAGS += -march=$(riscv-march-cflags-y)
> +KBUILD_AFLAGS += -march=$(riscv-march-aflags-y)
>
>  KBUILD_CFLAGS += -mno-save-restore
>  KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
> --
> 2.17.0
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

