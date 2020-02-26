Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE0F16F852
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 08:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cpYrF7w4mpFn02/SL7bSLQErUx4+nxeXoEf0H6rWG5s=; b=LFaKk+xikLcJ82XxA/uMYNVMx
	9m6CvZLsLPcDwOF2e1gPmvg++BnlnyqKpSDydFMEl6whqTv1r8RA+pinqeMhIR88SiUezTRoDSUeu
	OunG+LNSCt9+hieTSvA4QPcU7Vc6mGqyLxQIhAauPqLfWwGBAThz63yh7sZVGXEyCFhPSM/dMWIqZ
	RVOcHF9d4O/J2Tr3Ek6hXAIljVl1Khkmwo3eIS4BeNtSz53QLaTqRIraYcGA9+wRi7nGbosqJO9AP
	1T5cwnZaLWAMVzHlYpnMkf6jcrs+W0W3PnE7zKrA0W+eKCHbXkTirwaSdrRTEz3PbWwPW1TjJQEY2
	6I79qMgZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6qlw-00029L-Gd; Wed, 26 Feb 2020 07:06:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6qlt-00028l-7W
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 07:06:18 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DF9C2467B
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 07:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582700776;
 bh=uZjWbm4CHv7CzRvbIQoptYI7eFmVZqT/jpXr1XMve3I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZUggyWOdb8O1B4aYP7ECTmUI12PniQXaw4GAhKMCAzyTOVDikA+4CQ7m8IvF/eHYC
 DHylRK4TugMmAsQVorPWYkdc+zKWRBzr/03f52i0+4LXaGj7ngPVi+y4bPx5Q6wvvQ
 gN3avXJRVRrrMK37zeOLogvYyjySaq+75Zjp9HKs=
Received: by mail-wm1-f42.google.com with SMTP id m3so1793164wmi.0
 for <linux-riscv@lists.infradead.org>; Tue, 25 Feb 2020 23:06:16 -0800 (PST)
X-Gm-Message-State: APjAAAWxqVopw10cw6/7pZVoaw/A8aa5/+MB0N9b56RYLwBZr9jWB6n/
 vhfFr1mNvtdjq4yfFCG4KZ9DcJqJ7ccVZ3z58KTiQA==
X-Google-Smtp-Source: APXvYqxVo4pBQodPuVmpIAWoLWlNGgk9OZk/TYLmLgPc/3nUtao5D+GJ3tSM7OyQhzsoCgw/xpZfGvWiOFsuBzM9GRg=
X-Received: by 2002:a05:600c:24b:: with SMTP id 11mr216141wmj.1.1582700774936; 
 Tue, 25 Feb 2020 23:06:14 -0800 (PST)
MIME-Version: 1.0
References: <20200226011037.7179-1-atish.patra@wdc.com>
 <20200226011037.7179-3-atish.patra@wdc.com>
In-Reply-To: <20200226011037.7179-3-atish.patra@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 26 Feb 2020 08:06:04 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-LAfcH5mLZNLk7=A3E43a93FK+8DPYNrx1FANnbo3J7g@mail.gmail.com>
Message-ID: <CAKv+Gu-LAfcH5mLZNLk7=A3E43a93FK+8DPYNrx1FANnbo3J7g@mail.gmail.com>
Subject: Re: [RFC PATCH 2/5] include: pe.h: Add RISC-V related PE definition
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_230617_314386_6424A46A 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, "Schaefer,
 Daniel \(DualStudy\)" <daniel.schaefer@hpe.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 at 02:10, Atish Patra <atish.patra@wdc.com> wrote:
>
> Define RISC-V related machine types.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

If you put them in alphabetical order wrt SH3:

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>


> ---
>  include/linux/pe.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/include/linux/pe.h b/include/linux/pe.h
> index 8ad71d763a77..6a7c497e4b1f 100644
> --- a/include/linux/pe.h
> +++ b/include/linux/pe.h
> @@ -56,6 +56,9 @@
>  #define        IMAGE_FILE_MACHINE_POWERPCFP    0x01f1
>  #define        IMAGE_FILE_MACHINE_R4000        0x0166
>  #define        IMAGE_FILE_MACHINE_SH3          0x01a2
> +#define        IMAGE_FILE_MACHINE_RISCV32      0x5032
> +#define        IMAGE_FILE_MACHINE_RISCV64      0x5064
> +#define        IMAGE_FILE_MACHINE_RISCV128     0x5128
>  #define        IMAGE_FILE_MACHINE_SH3DSP       0x01a3
>  #define        IMAGE_FILE_MACHINE_SH3E         0x01a4
>  #define        IMAGE_FILE_MACHINE_SH4          0x01a6
> --
> 2.24.0
>

