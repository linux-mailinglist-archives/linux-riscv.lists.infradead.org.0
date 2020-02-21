Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06264166F66
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 07:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BmMw69yF1xjsB+33COeMx7MgH3XoFsnMEnp3FC6eBks=; b=ESY5pfnOvVqwbZQpLuf5vqO34
	Lo5uV8oEnIqo6cSEfsykweFfxpzysAOf3zaqQSoeiQ9IWjq9L+CSlIiFGnrv8/PE8x42CTOO7UAf1
	SsO/UKr7E8G4PanhgWKufnnrNH+bDSaTZftYs1IOaOHjGphlA5mB+6vdGUQzDCodcpPnN3jERG03n
	MKegDhRS/PAe6wmNCda1n8dTSrfoyzMCHdl0UfIa6x6jH+wg7xgVvpRI8xIC9R+eYG3T2x67fN84m
	Wy5A72K7SK0uL3BMoc60cPf9RY7UFk0hhxCps4d7dF7mawddzqnW4X3N1+JhHzuLBjpElaPE9Ba5m
	2j8nbdKHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j51NP-0000hW-Qn; Fri, 21 Feb 2020 06:01:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j51NM-0000h3-MI
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 06:01:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so396242wmj.5
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 22:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BmMw69yF1xjsB+33COeMx7MgH3XoFsnMEnp3FC6eBks=;
 b=uDyg6dtZ9smsx+eqycwjMVDhcPmlDEP1FZK5nl/O2qvCxKvW1P94PT8OnzZbHwCJpu
 aN6M1H98LeutAxEAsUOtYbTjq+rVGdUqgZRvdwDbgzyvTAQRoDVZisFPZDjF/CE0YUnC
 79gvRuR4oO27/YGdnNKEEseriACNpkx0xVTJ3QFQUlhSI33+LJafkcVNQCnHiQtZrB0o
 ghUUHwvrlhn8PiFdgTV+ffKNK5dVIvOyIn0fsO75TJWs4w+Jl4Qm+FVtDLtgn7ZKEDhd
 if4toeJjJuDjr0I+ECLbTjnulqYAvq4asTBj7oHOkCq1kJTnxlpUnWOgwYBZsz7QCfqX
 1OaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BmMw69yF1xjsB+33COeMx7MgH3XoFsnMEnp3FC6eBks=;
 b=HWkD64WzrMSAI62c+Lt3Q7FdJsy6/LpT/dRmotPqbXMCzu6TItLV+OBQAxjGppubns
 fcOzKXItuuJB5QY6hANgMcQ2PaWpXwzcebAckA7A1kFkuwSzg/SgvaI1NfryijjoQ0Cd
 PNiANDdd7k42QX7XC8F3mtSWPqsiHEmDTSOEU/6V/wv6W/POUzg38PxjZeq1jcacXfyb
 6aVbZzFA2YCTuTi6vbMFzYjyfzzftKMaYjUDbRe4Z93pUOLM08LHTO4kR5MLN14vymZn
 1DILn0Q32AZDGi1LEO1DsIzX1MxgCSoj9ilRG8wU3bPgY9ru4U1jzUiZNWuFyg3KGizT
 2GJg==
X-Gm-Message-State: APjAAAWLyVdKyVyn6eM2zocHWUPKEyeuwfNHozldRN7UCNFeGRITHxCD
 4HRQF3ga0Dc/8IIloBiR0+FrJyz6P1+Sumo1crcbsA==
X-Google-Smtp-Source: APXvYqwSbWQx9lHm7xKEsIjxehHLlqsyvfT819rPiihd+ZTdxgf94VO6sABql9l/fp2RHuPgOyZ9ySzu33XnkEYOvEE=
X-Received: by 2002:a05:600c:285:: with SMTP id
 5mr1460069wmk.120.1582264882627; 
 Thu, 20 Feb 2020 22:01:22 -0800 (PST)
MIME-Version: 1.0
References: <20200221004413.12869-1-atish.patra@wdc.com>
 <20200221004413.12869-9-atish.patra@wdc.com>
In-Reply-To: <20200221004413.12869-9-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Feb 2020 11:31:11 +0530
Message-ID: <CAAhSdy0QE+5dXZnnzWaL-6GZCEN8FhLQY1f=kW6ZdEmaCwOxYg@mail.gmail.com>
Subject: Re: [PATCH v9 08/12] RISC-V: Export SBI error to linux error mapping
 function
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_220124_727602_59EC3BC9 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
> All SBI related extensions will not be implemented in sbi.c to avoid
> bloating. Thus, sbi_err_map_linux_errno() will be used in other files
> implementing that specific extension.
>
> Export the function so that it can be used later.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 1 +
>  arch/riscv/kernel/sbi.c      | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index d55d8090ab5c..abbf0a7d3b6e 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -130,6 +130,7 @@ static inline unsigned long sbi_minor_version(void)
>  {
>         return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
>  }
> +int sbi_err_map_linux_errno(int err);
>  #else /* CONFIG_RISCV_SBI */
>  /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
>  void sbi_set_timer(uint64_t stime_value);
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index 38ec99415060..d0c9516b6c0a 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -46,7 +46,7 @@ struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
>  }
>  EXPORT_SYMBOL(sbi_ecall);
>
> -static int sbi_err_map_linux_errno(int err)
> +int sbi_err_map_linux_errno(int err)
>  {
>         switch (err) {
>         case SBI_SUCCESS:
> @@ -63,6 +63,7 @@ static int sbi_err_map_linux_errno(int err)
>                 return -ENOTSUPP;
>         };
>  }
> +EXPORT_SYMBOL(sbi_err_map_linux_errno);
>
>  #ifdef CONFIG_RISCV_SBI_V01
>  /**
> --
> 2.25.0
>

LGTM.

Reviewed-by: Anup Patel <anup.patel@wdc.com>

Regards,
Anup

