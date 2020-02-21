Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48B1166F68
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 07:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aqtAvwxT6JrwXsCKyiro+Lp0pOc/Ni4qRf2FDo8jA7I=; b=FcmKc9AyWtTptHWh79FnyZ2nu
	nvtTCrTjyyQZN0oUXaGUfs6sHPr5bCfQfmtk68qEpt8MTclMISMgxQDesZSOqP/RZHJDGveC1jGG6
	KloV5DYbwx7UUG73/VsD2TVhyqdrdDsq1e6CmuanHXfSN3nA0v2WvlUwIZfYmF9bnZYEAuRwEbwcX
	lBl7VVNADGRDsKMeVBzA9V1dngoEAl09UyZX/i5P+L9oTWyY1sIQkUCDat0HIg4IlVPOHDWHFltRv
	rm0/cbdISxp02b2t//X2b/im2u4Nm4bIG20WHQfEJFb3ybcZBKP7J19Eaoh+NA/avju2eSyi7VmI7
	sv/X2Ph9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j51Pt-0000wY-CP; Fri, 21 Feb 2020 06:04:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j51Pp-0000vZ-La
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 06:03:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id n10so634765wrm.1
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 22:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aqtAvwxT6JrwXsCKyiro+Lp0pOc/Ni4qRf2FDo8jA7I=;
 b=k78bxUZhB4k7Cc+JUEXD+nAd1mPCAv1V4W58+FtztDdj7Rs7vyd2zu2MHyjhqMI8Ti
 IPUICzblgtxDIA60pRkSRhgKpiGZbivYVHmk5FzLgEo23O7c3gwutPCqjLIGmGw8nKuQ
 n2s9xe2RhD8kyX09Jg1QMBvWv3q1aG5SUfawDmQuAg7Mj6Q0+r8MMTO9UY+mcYp8WQlc
 l6JrcYXFOL8gtYGTwKRclqO59hlX4+KG2Ngp8uicdiMobm15Ry91KQFUEjUctfXzJFmE
 BN+7qP7+ef3/LUCCD83C7N+GQF/HqipJTkBpBv36LRFeiJ/fD36AYZ3TMj/lwhVRjpwi
 ZS7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aqtAvwxT6JrwXsCKyiro+Lp0pOc/Ni4qRf2FDo8jA7I=;
 b=hWlarGDQ/RT1LH2RptLJaNVEWTSedlQWGal6NwFpnPZKMXWlgIoopAjhLffnyg1P75
 uf3+xWrcaBUdnU/oO+iiUhLECD4ZGTBqryvo4GK8LST7CgsJu4ECVzeDpmBwuHiKBo9k
 aoQ7uEsekWWdml9wiwTQjk18VhDmTTW2NGa+xQwjK9mmjeSCkMF2tHB0NBFFNxVSYBZN
 UgmUL9RdvpoL2RGfD5bX9ZxKX0W2IvoZXf1WKZQD8YSf8k780gDDEL0ri843iHEUz6Lb
 Qz8wPV8sKrjs+NdKWIBmkbOQpK19jc5nQs6oQteDhNOnAlZndq5Xg1+eejoGdbUePyPJ
 tOxw==
X-Gm-Message-State: APjAAAU/8Mpaviga4d1EhJhe/tMd4+vrLnL+j9l/KemyXd8rHmzBePKP
 bajsrPb0DOrLgFo4Nr8kjZQ9kvTn5nUDJikaL+wbzQ==
X-Google-Smtp-Source: APXvYqzKt9n9Xq8la74Z+xvm6ahETvrqRFQztSYDibW0kIX5kMERSsw3QEO1Kd+rVdcG/sAhQmnfak0jzNiUTghp8IA=
X-Received: by 2002:adf:f28f:: with SMTP id k15mr45926753wro.230.1582265032524; 
 Thu, 20 Feb 2020 22:03:52 -0800 (PST)
MIME-Version: 1.0
References: <20200221004413.12869-1-atish.patra@wdc.com>
 <20200221004413.12869-10-atish.patra@wdc.com>
In-Reply-To: <20200221004413.12869-10-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Feb 2020 11:33:40 +0530
Message-ID: <CAAhSdy10hJ=Ucc27JZvq1fZ8pBuFnQukMTk6=ghNLOmNqrOyxg@mail.gmail.com>
Subject: Re: [PATCH v9 09/12] RISC-V: Add SBI HSM extension definitions
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_220357_709129_64BF11D0 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 6:14 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> SBI specification defines HSM extension that allows to start/stop a hart
> by a supervisor anytime. The specification is available at
>
> https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
>
> Add those definitions here.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index abbf0a7d3b6e..0981a0c97eda 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -26,6 +26,7 @@ enum sbi_ext_id {
>         SBI_EXT_TIME = 0x54494D45,
>         SBI_EXT_IPI = 0x735049,
>         SBI_EXT_RFENCE = 0x52464E43,
> +       SBI_EXT_HSM = 0x48534D,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -56,6 +57,19 @@ enum sbi_ext_rfence_fid {
>         SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
>  };
>
> +enum sbi_ext_hsm_fid {
> +       SBI_EXT_HSM_HART_START = 0,
> +       SBI_EXT_HSM_HART_STOP,
> +       SBI_EXT_HSM_HART_STATUS,
> +};
> +
> +enum sbi_hsm_hart_status {
> +       SBI_HSM_HART_STATUS_AVAILABLE = 0,
> +       SBI_HSM_HART_STATUS_NOT_AVAILABLE,

Rename "_AVAILABLE" to "_STARTED" and
"_NOT_AVAILABLE" to "STOPPED" to match
SBI v0.2-rc1 spec.

> +       SBI_HSM_HART_STATUS_START_PENDING,
> +       SBI_HSM_HART_STATUS_STOP_PENDING,
> +};
> +
>  #define SBI_SPEC_VERSION_DEFAULT       0x1
>  #define SBI_SPEC_VERSION_MAJOR_SHIFT   24
>  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> --
> 2.25.0
>

Otherwise, looks good to me.

Reviewed-by: Anup Patel <anup.patel@wdc.com>

Regards,
Anup

