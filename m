Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AAC49A7E
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 09:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=9OH7Gz1+IDeHVkpZtyX2Do6i5Dd2SKhi+GPXF0vem6Q=; b=MVzPIcP875gYcRKSVgTql4dbQ
	DoO6GxhbFupjZs0E0ttsYhgnEb/zlHhpQ6C5X+LDkLKMdbqQJX/zEx4XVZsVMn6JdOiqbKem4uikH
	lk9196QBo0ScIIlz2rKJZcrXIuBUFGTPEshEq6hPbTNy7ttkWGYjBFfKXp3myH0xSIuUVT9nZ8/Ws
	uaeLGs3nksUl16dMqAsyePKpA7nBEwKUCO/1OizWO8TUrPzgKg84scoadUkZv71g08MbXubSUUmi3
	1NtoLbpwMiq7r2XdJzjrymkucHjHwtj+LPD+N/2Ia5idt25xKbAkU4ah5HN6v9PQjDAtk2n3P+3PX
	kkLJH0Z1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8TY-00021E-RC; Tue, 18 Jun 2019 07:24:16 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8TL-0001qj-Qy
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 07:24:06 +0000
Received: by mail-io1-f67.google.com with SMTP id u19so27387281ior.9
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 00:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=0+t93s+Stg4MMxxGEbnWigFHRXFZAr6q4M1dHdlc/yk=;
 b=BcT6N7Gs0EqZ++aiQ9njRhWJfAHIQXu17p7wah+xrJKok/WfO7P8Vk5YKg15noW36E
 lLg2xmdUPWh040/8gFBg+F3Adwms2cGCnmroTv8iJE4TT72d3RymJzsz5Z2JMhzyJF5J
 0/BkiB/E9uznm1td/Eza+cY45YqAhCrpfkgJFTe5DKan6u5XNvs0+OldEVVjaLa052AK
 1vykkvLmEKnesNzLy8WYHfwPf5Tp3c5KxxYrYpWYepLKWY1IkMJ2LZIdVWZWaLRJ8VQO
 zkvN20ocTyJ5uEHMxy15mZXXaktk2KRRws6wLPOnR6ACQyZyP2jXFpF2GiVF4Eexl6Tf
 2SuA==
X-Gm-Message-State: APjAAAUnnxacHq0HLfLtUJe6wdN7BMn9YWUmUQ3nvmTncdoL79G+20/R
 8p+PzaDnvu/AdlZPQOHnpNWlfzUqCV6L3Q==
X-Google-Smtp-Source: APXvYqzB5/mmEXm6SqNRyFZbrWrTKluzqv1QMKWeYCajJdpLO5wc2ZHmkNMwrbxl8sLxwNpBqUmUpQ==
X-Received: by 2002:a6b:d809:: with SMTP id y9mr6741950iob.301.1560842642278; 
 Tue, 18 Jun 2019 00:24:02 -0700 (PDT)
Received: from localhost (210-61-29-234.HINET-IP.hinet.net. [210.61.29.234])
 by smtp.gmail.com with ESMTPSA id c10sm16865291ioh.58.2019.06.18.00.24.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 00:24:01 -0700 (PDT)
Date: Tue, 18 Jun 2019 00:24:01 -0700 (PDT)
X-Google-Original-Date: Tue, 18 Jun 2019 00:20:25 PDT (-0700)
Subject: Re: [PATCH v3] RISC-V: Break load reservations during switch_to
In-Reply-To: <alpine.DEB.2.21.9999.1906170609430.32654@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-6e86484c-5f3e-4b3b-b320-ad6fbcb82366@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_002403_914826_207A3F1F 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 06:12:57 PDT (-0700), Paul Walmsley wrote:
> Hi Palmer,
>
> On Sun, 16 Jun 2019, Palmer Dabbelt wrote:
>
>> The comment describes why in detail.  This was found because QEMU never
>> gives up load reservations, the issue is unlikely to manifest on real
>> hardware.
>>
>> Thanks to Carlos Eduardo for finding the bug!
>>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
>
> This breaks the rv32_defconfig build:
>
>   AS      arch/riscv/kernel/entry.o
> arch/riscv/kernel/entry.S: Assembler messages:
> arch/riscv/kernel/entry.S:343: Error: unrecognized opcode `sc.d x0,ra,0(a3)'
> make[1]: *** [scripts/Makefile.build:369: arch/riscv/kernel/entry.o] Error 1
>
>> ---
>> Changes since v2 <20190607222222.15300-1-palmer@sifive.com>:
>>
>> * REG_SC has the arguments the right way around.
>>
>> Changes since v1 <20190605231735.26581-1-palmer@sifive.com>:
>>
>> * REG_SC is now defined as a helper macro, for any code that wants to SC
>>   a register-sized value.
>> * The explicit #ifdef to check that TASK_THREAD_RA_RA is 0 has been
>>   removed.  Instead we rely on the assembler to catch non-zero SC
>>   offsets.  I've tested this does actually work.
>>
>>  arch/riscv/include/asm/asm.h |  1 +
>>  arch/riscv/kernel/entry.S    | 11 +++++++++++
>>  2 files changed, 12 insertions(+)
>>
>> diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
>> index 5ad4cb622bed..946b671f996c 100644
>> --- a/arch/riscv/include/asm/asm.h
>> +++ b/arch/riscv/include/asm/asm.h
>> @@ -30,6 +30,7 @@
>>
>>  #define REG_L		__REG_SEL(ld, lw)
>>  #define REG_S		__REG_SEL(sd, sw)
>> +#define REG_SC		__REG_SEL(sc.w, sc.d)
>
> I guess this should be __REG_SEL(sc.d, sc.w) ?

Sorry about that, I forget to actually include the fixup in the patch.  There's
also some debate about the comment's correctness, so I'll submit a v4.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
