Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7817D4788B
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 05:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=OCSB8zQnadjwig9TZTph79OmE3luVN2VeyCBPEXecXM=; b=Bsj21oR4fc0vQZYW9aQHoXVBQ
	DX9j1OAzpg53gO5Bzv828bOgRfVLzoZ41cgHIS/1ZLmqW07Hz+QXztyfPm6zNBN+oj6vLbPuRJKtI
	ob/0kkj0eDi6fA3kahtWjP2FNLxeFO3u68THxyL6A9OZhFVF0RSQsdEk1e8stkHXopwpeQyNgWsxT
	STRG+SKbUn/8Y68uB+WKJspZCaMXC1RTZ6XYAhx0+L/EfYT+vs4NBkCVMcFkqZsPspWyER79pVwyi
	dTsIVkVIwfn/NzDSqL6F/rKBmYfZkhivta+teENVZe7ONmvRx1A4QJVyaGNIDJfYYXO6vk1hdhKUW
	qgavMwcKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hci1Y-0004GP-I1; Mon, 17 Jun 2019 03:09:36 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hci1U-0004Fe-Fx
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 03:09:33 +0000
Received: by mail-pl1-f194.google.com with SMTP id k8so2491013plt.3
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 20:09:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=oUh6hfLSAJw1NhYrQppNGg6oKv5nxfUTJWLmGY+P1as=;
 b=exdszyrgEIYnv8rNMaC8O/73CdBgHObpEvSYI+jMUWUVLQW69tm4s0TsK320S8mZrl
 uega7J4qpqXrY01Fy+hS3ENyzXT+idlQtPWmKnBu4LT/i+ilYyrxCPvKX5Lgoesfm53p
 4Tm8atuKbu2zNXiZbzozeKWdLhPgao3CC3Nn0IKO9cMogdGX777OCXk6HAkGLLdJ0dre
 QJo1mPVfXIrOGxVK3XlRg08OCl2lcdC4NbaJD3MBeVkFH+v0/GTRPFe0WZfAnIaRZwiC
 E9KzqAMrDv0iVXUY60MwhKvBeYOpbakFqwbWBjuYqdt0OXNRAGSfcw1hMyd4NYDLuuy/
 8GZw==
X-Gm-Message-State: APjAAAVhN0Aw1s8oX+YSBwmv8yfGBfb3dXHl9ego+aogGel9oUJoxm9G
 snzm9jf5297ubvLTB4YSl42N8h7EDspxmCaS
X-Google-Smtp-Source: APXvYqyz7axLzPrBHaIfjrC0NzlkNQ6sUaPo3U0hNhjMZH+KhaZs43iAQFTwcnTHm4QfLzA1fMH9YQ==
X-Received: by 2002:a17:902:6b44:: with SMTP id
 g4mr12630512plt.152.1560740969406; 
 Sun, 16 Jun 2019 20:09:29 -0700 (PDT)
Received: from localhost ([14.215.134.187])
 by smtp.gmail.com with ESMTPSA id q7sm11042023pfb.32.2019.06.16.20.09.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 20:09:28 -0700 (PDT)
Date: Sun, 16 Jun 2019 20:09:28 -0700 (PDT)
X-Google-Original-Date: Sun, 16 Jun 2019 20:08:25 PDT (-0700)
Subject: Re: [PATCH v2] RISC-V: Break load reservations during switch_to
In-Reply-To: <20190616175405.GF61734@hippo.sing.id.au>
From: Palmer Dabbelt <palmer@sifive.com>
To: joel@sing.id.au
Message-ID: <mhng-778da899-6dc7-4b10-825d-85284990534b@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_200932_529506_BC660908 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 marco@decred.org, me@carlosedp.com, Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 16 Jun 2019 10:54:06 PDT (-0700), joel@sing.id.au wrote:
> On 19-06-07 15:22:22, Palmer Dabbelt wrote:
>> The comment describes why in detail.  This was found because QEMU never
>> gives up load reservations, the issue is unlikely to manifest on real
>> hardware.
>
> Makes sense, however it obviously will not help until qemu actually
> clears load reservations on SC (or otherwise handles the interleaved
> SC case).

Ya, I wasn't paying close enough attention.  I think this should do it

    diff --git a/target/riscv/insn_trans/trans_rva.inc.c b/target/riscv/insn_trans/trans_rva.inc.c
    index f6dbbc065e15..001a68ced005 100644
    --- a/target/riscv/insn_trans/trans_rva.inc.c
    +++ b/target/riscv/insn_trans/trans_rva.inc.c
    @@ -69,6 +69,7 @@ static inline bool gen_sc(DisasContext *ctx, arg_atomic *a, TCGMemOp mop)
         gen_set_gpr(a->rd, dat);
    
         gen_set_label(l2);
    +    tcg_gen_movi_tl(load_res, -1);
         tcg_temp_free(dat);
         tcg_temp_free(src1);
         tcg_temp_free(src2);

I'll send the patch out to the QEMU mailing list.

> See comment inline.
>
>> Thanks to Carlos Eduardo for finding the bug!
>>
>> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
>> ---
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
> The instructions appear to be inverted here (i.e. "sc.d, sc.w").

Thanks, I'll send a v3.

>>  #define SZREG		__REG_SEL(8, 4)
>>  #define LGREG		__REG_SEL(3, 2)
>>
>> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
>> index 1c1ecc238cfa..af685782af17 100644
>> --- a/arch/riscv/kernel/entry.S
>> +++ b/arch/riscv/kernel/entry.S
>> @@ -330,6 +330,17 @@ ENTRY(__switch_to)
>>  	add   a3, a0, a4
>>  	add   a4, a1, a4
>>  	REG_S ra,  TASK_THREAD_RA_RA(a3)
>> +	/*
>> +	 * The Linux ABI allows programs to depend on load reservations being
>> +	 * broken on context switches, but the ISA doesn't require that the
>> +	 * hardware ever breaks a load reservation.  The only way to break a
>> +	 * load reservation is with a store conditional, so we emit one here.
>> +	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
>> +	 * know this will always fail, but just to be on the safe side this
>> +	 * writes the same value that was unconditionally written by the
>> +	 * previous instruction.
>> +	 */
>> +	REG_SC x0, ra, TASK_THREAD_RA_RA(a3)
>>  	REG_S sp,  TASK_THREAD_SP_RA(a3)
>>  	REG_S s0,  TASK_THREAD_S0_RA(a3)
>>  	REG_S s1,  TASK_THREAD_S1_RA(a3)
>> --
>> 2.21.0
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
