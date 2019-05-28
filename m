Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA122CDEF
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 19:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=uxPtqyiJu8Te3tuknhBiXuxzb7glglRnW1we9oKcyeM=; b=WOdwsDB16Jso/PAWEc2Kd8RwV
	/bTWuOMeIzkPoJKAiX7Hu14L5A8R57itKK0wLVlaOsMJq/JRs/V4ioxfl44Oo7wwgzC4vq4FwP7+f
	FGBHQUhPrB/Q91K0f7LLahkHe2mZn+3iPkgDNHc16N6pL+5NV1X6WG96VIAyOWkLxZqMkghZEBtqF
	EUDdGJnZAEIekg9EVDKyC/dO3vuRQDlpHGOdQasrTAoBzldRFPy7YjUEWqMQ2s+T+npFOKG2gZh2G
	yQPycQHHZj6enbJWXMzXoyfQGznb6TmCy3cWVieeKZ1EVOf/a8hLy9XTN8t0aJ7PxhZRtDeQ04iS7
	8l0TyvlGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgCg-0003x3-Bf; Tue, 28 May 2019 17:48:02 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgCZ-0003pi-BU
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 17:47:59 +0000
Received: by mail-pl1-f193.google.com with SMTP id p1so8657751plo.2
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 10:47:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=yQ0wPLtkdAzUq5XjJlbPIX/NMo5+U32U+TCJOUeQptg=;
 b=S6h0yk/7qoCSYcvV0TDGb984gcUY2gKqeueg7hSaKuWBw/T9nREQe2DnTFS1oJpsqz
 4cJyxauEdEI4HKwa3fCELztbdhVGA0TWfGaVjs6z0w6jOAhI5Vw8mWMl2Th2wPV2zqCS
 uX/q5GuJa/8tFbS3fBDWEefFpRUvB5Z7IYT522NMbfEL2GqnWezXFuvkso+zeVs0bfjp
 HMG947GJY1VotIkPD0ODY9kMcTL5U9XmARw0dI72+Jgz6xXcv76EhYIpQ0WkaG4Ib+0M
 ymjjETwqj4cBa6E72wIMuyEmhss+ig4Yyg1hRtTv1Z4ZcrnJxlCeZJdGtNjxPspQCRzh
 B2/A==
X-Gm-Message-State: APjAAAVgfzXRzthFHBgMYI+aeH1CMdrQ0OZkRsvktBjGUIN/XvxIpqGt
 5a0EqEidVGfzkllw9YZs3ljSJA==
X-Google-Smtp-Source: APXvYqzqUp9mZrKkwVeBMEF04LcIL97F2p9K1BbOvKaRPaeqWYNzhaM6QsYL3PqLaC3AC8ackdjoMA==
X-Received: by 2002:a17:902:1126:: with SMTP id
 d35mr101551544pla.82.1559065671746; 
 Tue, 28 May 2019 10:47:51 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id d9sm12944666pgj.34.2019.05.28.10.47.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 10:47:51 -0700 (PDT)
Date: Tue, 28 May 2019 10:47:51 -0700 (PDT)
X-Google-Original-Date: Tue, 28 May 2019 10:47:49 PDT (-0700)
Subject: Re: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
In-Reply-To: <CAAhSdy3GqjS06QxCtY6OUkBZds4gygQsAkaoaa+sMj3z6qgUBQ@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: anup@brainfault.org, Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-2b0ca072-2d6d-4422-96a2-2a4254255cc6@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_104755_393201_ECF00761 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 01:05:22 PDT (-0700), anup@brainfault.org wrote:
> On Wed, May 15, 2019 at 12:00 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>>
>> This patch enables NO_HZ_IDLE (idle dynamic ticks) and HIGH_RES_TIMERS
>> (hrtimers) in RV32 and RV64 defconfigs.
>>
>> Both of the above options are enabled by default for architectures
>> such as x86, ARM, and ARM64.
>>
>> The idle dynamic ticks helps use save power by stopping timer ticks
>> when the system is idle whereas hrtimers is a much improved timer
>> subsystem compared to the old "timer wheel" based system.
>>
>> This patch is tested on SiFive Unleashed board and QEMU Virt machine.
>>
>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>> ---
>>  arch/riscv/configs/defconfig      | 2 ++
>>  arch/riscv/configs/rv32_defconfig | 2 ++
>>  2 files changed, 4 insertions(+)
>>
>> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
>> index 2fd3461e50ab..f254c352ec57 100644
>> --- a/arch/riscv/configs/defconfig
>> +++ b/arch/riscv/configs/defconfig
>> @@ -1,5 +1,7 @@
>>  CONFIG_SYSVIPC=y
>>  CONFIG_POSIX_MQUEUE=y
>> +CONFIG_NO_HZ_IDLE=y
>> +CONFIG_HIGH_RES_TIMERS=y
>>  CONFIG_IKCONFIG=y
>>  CONFIG_IKCONFIG_PROC=y
>>  CONFIG_CGROUPS=y
>> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
>> index 1a911ed8e772..d5449ef805a3 100644
>> --- a/arch/riscv/configs/rv32_defconfig
>> +++ b/arch/riscv/configs/rv32_defconfig
>> @@ -1,5 +1,7 @@
>>  CONFIG_SYSVIPC=y
>>  CONFIG_POSIX_MQUEUE=y
>> +CONFIG_NO_HZ_IDLE=y
>> +CONFIG_HIGH_RES_TIMERS=y
>>  CONFIG_IKCONFIG=y
>>  CONFIG_IKCONFIG_PROC=y
>>  CONFIG_CGROUPS=y
>> --
>> 2.17.1
>>
>
> Hi All,
>
> Any comments on this one?
>
> @Palmer, It would be nice to have this in Linux-5.2

My only issue here is testing: IIRC last time we tried this it ended up causing
trouble.  I'm in the process of switching to Yocto right now for my tests, so
it'll be a bit slow.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
