Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1F615B165
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 20:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8h+Be9OF2MK5Ytpf2Np0wQ3iq3A9mioBHD0VRufyqqs=; b=BltYjIbpSm0aJjLwnWq8MGCyZ
	Gpg22i+qbYbSH5LQLDBHT50YIHmc7/qfR9WIewGnRg9dB0BQfXsnKn+R0gUqjF/C7xFyxw/ff+/Td
	/kLZWaHGD/CDNuaYOtOa9dfUHWzNnuooTT9ZVzJmphyTOoWpSijQEw7iBw6RWnGqxiNBDpbN0fBuA
	D9o1QuIbXDB6oQ5KwJzXGr8WBkXSd8VW9fBSCvGZ5ai0LNxqTpBOzPogZlUKNIk22CwAn4S+DG5eM
	Uaxj19wsyycdevXo5yb/iOZwD85rL6w2UIVHT5yNQfKpgAy8jTdeYKlh262KSy46zzDFs2xE5GAwE
	eGWI7M5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1y5x-0003QF-0m; Wed, 12 Feb 2020 19:54:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1y5t-0003Pu-R4
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 19:54:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so3872597wrd.9
 for <linux-riscv@lists.infradead.org>; Wed, 12 Feb 2020 11:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8h+Be9OF2MK5Ytpf2Np0wQ3iq3A9mioBHD0VRufyqqs=;
 b=KzuOXwP/+AczoDterQIfUoyyRVd1T5q06m9N7yXg/EIcJV0Hg3BaneqpiZueDOUbyf
 75kWFFgECPDmtsVJQJ48OhX86KUkkFf2uZg79Z8OUMSZNQi8x1RuKASjzxVa4QcOjghS
 B/I6RdenX/vbGwlu17ITtB78+UKMhqHkQoCGGc/DK3XMcm9ioKNWINQdqh38ob0CIDcW
 iltBuYbPUQ/BKQx6kO+d+REfDu+cqjkhCrFJhMjs6O596hgVZAtLzHgDo5okHe2oL2Y8
 PdO6aXdLs9/HrGK9DN3NqQzASfiX0Zxx6WM/r9clWgMsZQzru9w2K27ey3K23bRWpk43
 41yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8h+Be9OF2MK5Ytpf2Np0wQ3iq3A9mioBHD0VRufyqqs=;
 b=s+CpiH6Tn2Yx1xlYxL5LSZrR0dnkKrCqpqM+dx60D6ro/5r0X6OufrZMWW1opy0O1A
 sZdPCycP16iSzFiEsuRZ6Ao5luR1P5ieVcR41jVV8yOWHeex+gFiazBdB1JG7UKkjR5S
 A+hMp4viN1vXbpowDxlWiVoTOaJEztUoccAwo1Jy5qteUAOogvlGIP1k6kEYbc1/ZCY4
 tu3u+NA4k6HzmWeuRXMBGpkxW0/XC9xtWMrKw5yZ3I5o2WwKaXkNbfppSAxjgvlz12Hx
 e9ass/r5HbqIeLZm0lf9fF/YoZNGX8qL7qUJDrzhJBE1IANAaPfJ+rpJpeFFGrJj5KVZ
 j+Hg==
X-Gm-Message-State: APjAAAU8lPMlHofM61DYeNJ6DIbwZc9Y4/HoofpqcFPCGGlkNRc+BGk5
 m2vzq03zEul8etDPFm7xp+CnGf1EjGUx1YAmMQNX
X-Google-Smtp-Source: APXvYqyO39GcuK0lCZrVW17R51sCLoUFtXVAQVtueys2KeFSpTcHV0AgMs8QzVnkGVgZlqfP1GXQFpbkp3llvduOqU0=
X-Received: by 2002:a5d:534d:: with SMTP id t13mr17667438wrv.77.1581537283865; 
 Wed, 12 Feb 2020 11:54:43 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-9-atish.patra@wdc.com>
 <CAAhSdy1BB=-FR_hx2mObDeWD+z2WzaVdZeiO9inmGPXasMcCTg@mail.gmail.com>
In-Reply-To: <CAAhSdy1BB=-FR_hx2mObDeWD+z2WzaVdZeiO9inmGPXasMcCTg@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Wed, 12 Feb 2020 11:54:32 -0800
Message-ID: <CAOnJCUJif_njbXAbZcAtzaBiEugL1Qb=_HrB3CtsebvRGd2kJA@mail.gmail.com>
Subject: Re: [PATCH v8 08/11] RISC-V: Add SBI HSM extension
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_115445_877982_6256A32B 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kees Cook <keescook@chromium.org>, Vincent Chen <vincent.chen@sifive.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Marc Zyngier <maz@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Allison Randal <allison@lohutok.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 8:53 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Wed, Feb 12, 2020 at 7:22 AM Atish Patra <atish.patra@wdc.com> wrote:
> >
> > SBI specification defines HSM extension that allows to start/stop a hart
> > by a supervisor anytime. The specification is available at
> >
> > https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> >
> > Implement SBI HSM extension.
>
> I think this PATCH needs to be further broken down.
>
> There are three distinct changes here:
> 1. Exporting sbi_err_map_linux_errno() function
>     arch/riscv/kernel/sbi.c
>     arch/riscv/include/asm/sbi.h
> 2. SBI HSM defines
>     arch/riscv/include/asm/sbi.h
> 3. SBI HSM helper functions (which are mostly static functions)
>     arch/riscv/kernel/Makefile
>     arch/riscv/kernel/cpu_ops_sbi.c
>
> We need separate patches for point1 and point2 above.
>
> Also, point3 can be part of current PATCH9.
>

Done.

> Regards,
> Anup
>
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h    | 15 +++++++++++
> >  arch/riscv/kernel/Makefile      |  3 +++
> >  arch/riscv/kernel/cpu_ops_sbi.c | 48 +++++++++++++++++++++++++++++++++
> >  arch/riscv/kernel/sbi.c         |  3 ++-
> >  4 files changed, 68 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
> >
> > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > index d55d8090ab5c..0981a0c97eda 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -26,6 +26,7 @@ enum sbi_ext_id {
> >         SBI_EXT_TIME = 0x54494D45,
> >         SBI_EXT_IPI = 0x735049,
> >         SBI_EXT_RFENCE = 0x52464E43,
> > +       SBI_EXT_HSM = 0x48534D,
> >  };
> >
> >  enum sbi_ext_base_fid {
> > @@ -56,6 +57,19 @@ enum sbi_ext_rfence_fid {
> >         SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> >  };
> >
> > +enum sbi_ext_hsm_fid {
> > +       SBI_EXT_HSM_HART_START = 0,
> > +       SBI_EXT_HSM_HART_STOP,
> > +       SBI_EXT_HSM_HART_STATUS,
> > +};
> > +
> > +enum sbi_hsm_hart_status {
> > +       SBI_HSM_HART_STATUS_AVAILABLE = 0,
> > +       SBI_HSM_HART_STATUS_NOT_AVAILABLE,
> > +       SBI_HSM_HART_STATUS_START_PENDING,
> > +       SBI_HSM_HART_STATUS_STOP_PENDING,
> > +};
> > +
> >  #define SBI_SPEC_VERSION_DEFAULT       0x1
> >  #define SBI_SPEC_VERSION_MAJOR_SHIFT   24
> >  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> > @@ -130,6 +144,7 @@ static inline unsigned long sbi_minor_version(void)
> >  {
> >         return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
> >  }
> > +int sbi_err_map_linux_errno(int err);
> >  #else /* CONFIG_RISCV_SBI */
> >  /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
> >  void sbi_set_timer(uint64_t stime_value);
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index f81a6ff88005..a0be34b96846 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -44,5 +44,8 @@ obj-$(CONFIG_PERF_EVENTS)     += perf_event.o
> >  obj-$(CONFIG_PERF_EVENTS)      += perf_callchain.o
> >  obj-$(CONFIG_HAVE_PERF_REGS)   += perf_regs.o
> >  obj-$(CONFIG_RISCV_SBI)                += sbi.o
> > +ifeq ($(CONFIG_RISCV_SBI), y)
> > +obj-$(CONFIG_SMP) += cpu_ops_sbi.o
> > +endif
> >
> >  clean:
> > diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> > new file mode 100644
> > index 000000000000..9bdb60e0a4df
> > --- /dev/null
> > +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> > @@ -0,0 +1,48 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * HSM extension and cpu_ops implementation.
> > + *
> > + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/mm.h>
> > +#include <asm/sbi.h>
> > +#include <asm/smp.h>
> > +
> > +static int sbi_hsm_hart_stop(void)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
> > +
> > +       if (ret.error)
> > +               return sbi_err_map_linux_errno(ret.error);
> > +       else
> > +               return 0;
> > +}
> > +
> > +static int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
> > +                      unsigned long priv)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
> > +                             hartid, saddr, priv, 0, 0, 0);
> > +       if (ret.error)
> > +               return sbi_err_map_linux_errno(ret.error);
> > +       else
> > +               return 0;
> > +}
> > +
> > +static int sbi_hsm_hart_get_status(unsigned long hartid)
> > +{
> > +       struct sbiret ret;
> > +
> > +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
> > +                             hartid, 0, 0, 0, 0, 0);
> > +       if (ret.error)
> > +               return sbi_err_map_linux_errno(ret.error);
> > +       else
> > +               return ret.value;
> > +}
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > index cd0f68aeac70..45ad49269f2c 100644
> > --- a/arch/riscv/kernel/sbi.c
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -47,7 +47,7 @@ struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
> >  }
> >  EXPORT_SYMBOL(sbi_ecall);
> >
> > -static int sbi_err_map_linux_errno(int err)
> > +int sbi_err_map_linux_errno(int err)
> >  {
> >         switch (err) {
> >         case SBI_SUCCESS:
> > @@ -64,6 +64,7 @@ static int sbi_err_map_linux_errno(int err)
> >                 return -ENOTSUPP;
> >         };
> >  }
> > +EXPORT_SYMBOL(sbi_err_map_linux_errno);
> >
> >  #ifdef CONFIG_RISCV_SBI_V01
> >  /**
> > --
> > 2.24.0
> >
>


-- 
Regards,
Atish

