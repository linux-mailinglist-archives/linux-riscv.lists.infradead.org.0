Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97C1162EAC
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 19:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=deSq0a14rSLUpPG1ENh74nUw4fh0dIpGPEl5kTUgrmw=; b=ZrYjMiKBJGcOOz
	17rxW91d4/PSvGzShAOOS1YobyeNbxakyinUutDvRgaRUZIDhUKBHNYgIWPUDzFAYonyin37PFcNu
	sL2BWBnMdu10JJRZ61NdoLcqy+tjkZMGaoMIIHrRknqO9NwpxmjQJyugchbmm2GZOD/33/GsFMCAr
	GugKKNj58KNA6i0VMRWOS2Aktzqbeceg2L3VpkQ+L98qDWfy1QD61WkDi8vlp7R2BZtfH6OrX4pda
	6zGM5brfVbHG2+gHsq1udYnYJZZtm0lviqg0TE6moUk8YbiNJg5TwZZoHhUle0qmrv6+HxKipmPGW
	9RbuxSENAHjrz1vFY6WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47jX-0000Cd-A8; Tue, 18 Feb 2020 18:36:35 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47jT-0000C0-Rf
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 18:36:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id j7so8425812plt.1
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 10:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=deSq0a14rSLUpPG1ENh74nUw4fh0dIpGPEl5kTUgrmw=;
 b=omEsIjt8aCcWfGTycR646o4RZaZaKMTiWee69L+h8Fll5DulpeCtdxPisOy8v0kvAM
 vu/2SlirKz3PFVgerQ+7mQNQVxEZgmSX+NtbNS8r1crMliYrPxUePrcoxH4zF2g3BuaO
 nefp+B1sAzPMdwKqxU82rlYdguWXyDAiEMndG+3ZRotaL7i8NbwThMLyeQs/ab6AZPXC
 506Ja+fL4Mqd1QNcEv6tcQhkhQ5JPNrVVmaNgG/Y6C6Q8033tQlpfDVvMg7Z9mnJLpgy
 dPMIiQPP6tjBmYU2cZ34bUrQB9figgSStewo8Mg6Cq+4r0QneW73BkVzmlIbsvSffU6W
 hWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=deSq0a14rSLUpPG1ENh74nUw4fh0dIpGPEl5kTUgrmw=;
 b=pw8bl2+HvZrTC8yXH1gZueHgYcQny7z4nyVyyhBt2HUjXDLTgOCTn50dLJM39UtZa7
 SQ7eN+zYrIZa8Rhp+OfdVqfHXH2oGSe80O7U5ty9sFzjbXoZQXjQlp0G0c2IKaNDJhZO
 jH3yNjHoxt3dVINZlaDAWEAK4bZClFqod4AzUimCKsceRzlZ//dDAo3SSiaFvvBcQdj2
 lrJYR13Kw8hwgt8SSZrrZLdIjcjdAruO3smIDPZD1JlvQc5+vNw0gjiN8DND/wnAZqtM
 02ISqQZuKcLUuVnxftl1KBUMiGqnmRIK4+gfZGTn9ocPNaX5wwW2aRBij/F62ne8b5rR
 kNjg==
X-Gm-Message-State: APjAAAWfrWaSe9fzUJoIUVsy2GzsQ2JVi3HaSLMFNI1INbTNrXL8zYCM
 sHv52suJ+FHR+09DdlcL6YbtUQ==
X-Google-Smtp-Source: APXvYqwcYKKfwzMe9EN+17kdygLIXGc6z65srtD5bMH+mVuMdxWGlEWgWQagiLvoXlBPO5rzfJPmEA==
X-Received: by 2002:a17:902:426:: with SMTP id
 35mr21802232ple.176.1582050988323; 
 Tue, 18 Feb 2020 10:36:28 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id z10sm5664511pgf.35.2020.02.18.10.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 10:36:27 -0800 (PST)
Date: Tue, 18 Feb 2020 10:36:27 -0800 (PST)
X-Google-Original-Date: Tue, 18 Feb 2020 10:36:25 PST (-0800)
Subject: Re: [PATCH] RISC-V: Don't enable all interrupts in trap_init()
In-Reply-To: <CAOnJCU+_CnH6XcXbVrf4LCg3s830n6x6OyWckzoBC-kG2yFpwQ@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: atishp@atishpatra.org
Message-ID: <mhng-afe8915b-f34a-49e5-86fd-92f5de4100ed@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_103631_942048_5396F3D6 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 02 Feb 2020 03:48:18 PST (-0800), atishp@atishpatra.org wrote:
> On Sun, Feb 2, 2020 at 3:06 AM Anup Patel <anup.patel@wdc.com> wrote:
>>
>> Historically, we have been enabling all interrupts for each
>> HART in trap_init(). Ideally, we should only enable M-mode
>> interrupts for M-mode kernel and S-mode interrupts for S-mode
>> kernel in trap_init().
>>
>> Currently, we get suprious S-mode interrupts on Kendryte K210
>> board running M-mode NO-MMU kernel because we are enabling all
>> interrupts in trap_init(). To fix this, we only enable software
>> and external interrupt in trap_init(). In future, trap_init()
>> will only enable software interrupt and PLIC driver will enable
>> external interrupt using CPU notifiers.

I think we should add a proper interrupt controller driver for the per-hart
interrupt controllers, as doing this within the other drivers is ugly -- for
example, there's no reason an MMIO timer or interrupt controller driver should
be toggling these bits.

>> Cc: stable@vger.kernel.org
>> Fixes: 76d2a0493a17 ("RISC-V: Init and Halt Code)

I'd argue this actually fixes the M-mode stuff, since that's the first place
this issue shows up.  I've queued this with

Fixes: a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs machine mode")

instead, as that's the first commit that will actually write to MIE and
therefor the first commit that will actually exhibit bad behavior.  It also has
the advantage of making the patch apply on older trees, which should make life
easier for the stable folks.

>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>> ---
>>  arch/riscv/kernel/traps.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
>> index f4cad5163bf2..ffb3d94bf0cc 100644
>> --- a/arch/riscv/kernel/traps.c
>> +++ b/arch/riscv/kernel/traps.c
>> @@ -156,6 +156,6 @@ void __init trap_init(void)
>>         csr_write(CSR_SCRATCH, 0);
>>         /* Set the exception vector address */
>>         csr_write(CSR_TVEC, &handle_exception);
>> -       /* Enable all interrupts */
>> -       csr_write(CSR_IE, -1);
>> +       /* Enable interrupts */
>> +       csr_write(CSR_IE, IE_SIE | IE_EIE);
>>  }
>> --
>> 2.17.1
>>
>>
>
> Looks good.
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Tested-by: Palmer Dabbelt <palmerdabbelt@google.com> [QMEU virt machine with SMP]
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

I consider this a bugfix, so I'm targeting it for RCs.  It's on fixes and
should go up this week.

Thanks!

