Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDEF17AE7D
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 19:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=IYzjB2dKqFRo7lIX50VavsZ/v5imYzKa/DmD2cTl4TU=; b=UPxRx/QxxVHOwb
	Sif60bJIVLcP2WexBOX+ZH+4d4RakTNay7l1nm8s8lOz+bOFcuZrMqtsDudq5Taq/Bp4H+zBPvmoX
	qyh/tJBBmXqL3b1+Xy9St5qeySpHtn/he6kSD6NAQzZ86q8qnqF86YKYy3oNiathx0JiNFmMSMLPM
	L6s9d9PHz+ZbVzc/CcQrISteJlmGncehB32x5l0QHqgIIrz5tyGE34XAfsN1muM4j26Msu1d917rJ
	2a673DsDxhteZPSxtgmXPn3v8d/6ydhynTVGbekvnkRYq2xQKWbgdlhFh6tCB1HSOD5jTEUWTLoJM
	jniMtWO6FGR5XRTAHPeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vaV-0005WL-O4; Thu, 05 Mar 2020 18:51:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vaR-0005VQ-GD
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 18:51:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id b1so3172410pgm.8
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 10:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=IYzjB2dKqFRo7lIX50VavsZ/v5imYzKa/DmD2cTl4TU=;
 b=OZOfBJM4XPrMHk8DXLhGfSp0ONxSgSaKDBDmZT6D9DZf55zZlOlkRCjtYnN9ZyZixB
 vQnOoLcZ85Yt1ZY6IpdO3yR/0xhbYRcIQyGUkqxnrAp2qhx8BOFL8J498btZ6N9HJ+IQ
 zZLRv8vE/rJLMlHsNsWAmmXgHEzjYQ+srKeEDxWAS+WKTRtP+7H6mU5vJCCtV2wSVS9P
 otNwL+TgGU0kQWJC0fUOQZ8o+vQPXoNgH3tnhT5qR1fa0kKRRqbYRHWiS4wpS8yHbf3f
 qiZLLUYaNnFrBrnSiYS9iVTTO+hvB91vFdZFbmFXbhQYsaWH/Y70Gqoo658Qac85ifi4
 1UEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=IYzjB2dKqFRo7lIX50VavsZ/v5imYzKa/DmD2cTl4TU=;
 b=nM2lamPecVorjU1odJ/aVWGc3vg7d5L4n8OGRPg2pbhahj+HlB2nAa/a2jFDJnrhnL
 5pR3eS2MyJZpD/XqMggJjlJIqbwY/cV+HqWcznkLtaM4psdi6OELd3meReG212cYrBSm
 EeDONFOrhDLFa+aSIfvXQs1FOOgpYEd9/hH5d7TfSYWxSVUD6KtUUoeiJMD8Fhdygaso
 JXzbIBbnNg27wuZ79Seo5X7cURRflnfawU86qDV6YB2znhJbAZ3zAOADszdS0A+02OeY
 rFMNkBHLxBT27p52B0YQUpPxv4XZeZJszhiHzQ6B2oARFut9sGtf8NGizQwWTZca/tBr
 JqtQ==
X-Gm-Message-State: ANhLgQ3NLP4fQh8uCjmg8D7CWUGq9u3Tn/6fcCg9CuXgaPQVDw0p6sww
 iLchycxC5c+D8TVphsWDxlHRiA==
X-Google-Smtp-Source: ADFU+vto1ZaDTJT9k8CN/nl5L7l6QT75MXqh6PBzmrL+xd+PwCclOFjsCOg/xavV+59vlVOyg70qKw==
X-Received: by 2002:a62:fc07:: with SMTP id e7mr9859565pfh.51.1583434269741;
 Thu, 05 Mar 2020 10:51:09 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id m128sm33766981pfm.183.2020.03.05.10.51.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 10:51:09 -0800 (PST)
Date: Thu, 05 Mar 2020 10:51:09 -0800 (PST)
X-Google-Original-Date: Thu, 05 Mar 2020 10:51:04 PST (-0800)
Subject: Re: [PATCH] RISC-V: Don't enable all interrupts in trap_init()
In-Reply-To: <CAAhSdy15mLGz3Xtu_Q7vOCP5Y2hQjWEosU1v8o8FxKfiLDx4qQ@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: anup@brainfault.org
Message-ID: <mhng-3ad99841-64b9-49f9-acd6-2ff2001a315a@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_105111_597993_86E0AC81 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, atishp@atishpatra.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 19:28:38 PST (-0800), anup@brainfault.org wrote:
> On Wed, Feb 19, 2020 at 12:06 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> On Sun, 02 Feb 2020 03:48:18 PST (-0800), atishp@atishpatra.org wrote:
>> > On Sun, Feb 2, 2020 at 3:06 AM Anup Patel <anup.patel@wdc.com> wrote:
>> >>
>> >> Historically, we have been enabling all interrupts for each
>> >> HART in trap_init(). Ideally, we should only enable M-mode
>> >> interrupts for M-mode kernel and S-mode interrupts for S-mode
>> >> kernel in trap_init().
>> >>
>> >> Currently, we get suprious S-mode interrupts on Kendryte K210
>> >> board running M-mode NO-MMU kernel because we are enabling all
>> >> interrupts in trap_init(). To fix this, we only enable software
>> >> and external interrupt in trap_init(). In future, trap_init()
>> >> will only enable software interrupt and PLIC driver will enable
>> >> external interrupt using CPU notifiers.
>>
>> I think we should add a proper interrupt controller driver for the per-hart
>> interrupt controllers, as doing this within the other drivers is ugly -- for
>> example, there's no reason an MMIO timer or interrupt controller driver should
>> be toggling these bits.
>
> I have always been in support of having per-hart interrupt controller driver.
>
> I will rebase my RISC-V INTC driver upon latest kernel and send it again.
> Of course, now the situation has changed the RISC-V INTC driver will
> have to consider NOMMU kernel as well.
>
> The last version of RISC-V INTC driver can be found in riscv_intc_v2
> branch of https://github.com/avpatel/linux.git

Thanks.  I think I saw some patches go by, so let's talk over there.

>
>>
>> >> Cc: stable@vger.kernel.org
>> >> Fixes: 76d2a0493a17 ("RISC-V: Init and Halt Code)
>>
>> I'd argue this actually fixes the M-mode stuff, since that's the first place
>> this issue shows up.  I've queued this with
>>
>> Fixes: a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs machine mode")
>>
>> instead, as that's the first commit that will actually write to MIE and
>> therefor the first commit that will actually exhibit bad behavior.  It also has
>> the advantage of making the patch apply on older trees, which should make life
>> easier for the stable folks.
>
> Sure, no problem.
>
>>
>> >> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>> >> ---
>> >>  arch/riscv/kernel/traps.c | 4 ++--
>> >>  1 file changed, 2 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
>> >> index f4cad5163bf2..ffb3d94bf0cc 100644
>> >> --- a/arch/riscv/kernel/traps.c
>> >> +++ b/arch/riscv/kernel/traps.c
>> >> @@ -156,6 +156,6 @@ void __init trap_init(void)
>> >>         csr_write(CSR_SCRATCH, 0);
>> >>         /* Set the exception vector address */
>> >>         csr_write(CSR_TVEC, &handle_exception);
>> >> -       /* Enable all interrupts */
>> >> -       csr_write(CSR_IE, -1);
>> >> +       /* Enable interrupts */
>> >> +       csr_write(CSR_IE, IE_SIE | IE_EIE);
>> >>  }
>> >> --
>> >> 2.17.1
>> >>
>> >>
>> >
>> > Looks good.
>> > Reviewed-by: Atish Patra <atish.patra@wdc.com>
>>
>> Tested-by: Palmer Dabbelt <palmerdabbelt@google.com> [QMEU virt machine with SMP]
>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> I consider this a bugfix, so I'm targeting it for RCs.  It's on fixes and
>> should go up this week.
>>
>> Thanks!
>
> Thanks,
> Anup

