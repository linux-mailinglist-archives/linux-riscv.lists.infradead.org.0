Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5A139856
	for <lists+linux-riscv@lfdr.de>; Sat,  8 Jun 2019 00:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=guaMEMSMHmlCtcOLWB5iLVVFHMqb9Sh+M9ufMzGuXqA=; b=MXJaPqlfrmOQV7IBw0BHJP7a8
	cKUJf/E+I74biy+afu8joVyPvn0WFs4lD3UC6dP3jb87x04dJlGU4OrzFShA4gP+soKP44w9z/ty4
	o483FKikO7U45bRaICdds2xL/6ilWRH+ml6jp7Ej+CqDlLsMfKWhssmoxM6iPy84uBiKJOQfw3M3o
	EUmzAL3ximhubMIqVjO0MrTVGEXbH0H+II95PBtmcm9/KwMRF5wadZnOalQKb/A6ZBW3KEQCXKULq
	xgAmopaX3l/ZnrPWNsY5tL15LzObWNVOXj9EoSCNWHVucEPQk6Xe4rw+FDANrvmV9yLeoKlo5ifdB
	pSNG0unug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZN6P-0003no-8j; Fri, 07 Jun 2019 22:12:49 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZN6L-0003n2-Mv
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 22:12:47 +0000
Received: by mail-pl1-f196.google.com with SMTP id d21so1325043plr.3
 for <linux-riscv@lists.infradead.org>; Fri, 07 Jun 2019 15:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=jmPOqHVXXc8BsUqtRJfurbZZiUJ7eEKFAc+yR316dGU=;
 b=IoxFNYUR90FEmt0CFdb2iGFNKV34xBXVT+LeeqhpGXRtYaM4NjDYRFc12ykue3cbem
 rMHWm/X8zYzyFzPofUP9ljLlrmPnlVgy4DUPmUAQfSBo0lY+9Jrn8Q0YMC9GhxYYTd9l
 nqSG6jslbn09a5OoLnMN7j9sEW389fEhJ3zhX3Ymvc24ExFbG+wFWXeA53XxnBAX9xzI
 pAV94EWa+2F1rWAO8QjiX0PbgOt92Qh2i1vDlQFV3TaD25HufsZSrUMUv49y9Chfumq7
 tza0pcQ0ZiHAWGx7H2IbV7vWiZQjNTrz8D/WXLQLQeBhZ5VBpEST/2ASA6o4w7mOYRAA
 02VA==
X-Gm-Message-State: APjAAAW1dW3PcOnKQVd2cChELxzv1oq8t6nUZ9F5/KqEOK9Pj+T22b9k
 uR4FfeWBDSg5jyG2E6/3a9eL/A==
X-Google-Smtp-Source: APXvYqz8OpliHXJJwtu5JxWix99Vw57S+eyKvSu4i62/JdX5hwf+WiB2lih0L3JKi8BXO4s9PFJ4CA==
X-Received: by 2002:a17:902:8f8e:: with SMTP id
 z14mr16618264plo.1.1559945563443; 
 Fri, 07 Jun 2019 15:12:43 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id y13sm3407673pfb.143.2019.06.07.15.12.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:12:42 -0700 (PDT)
Date: Fri, 07 Jun 2019 15:12:42 -0700 (PDT)
X-Google-Original-Date: Fri, 07 Jun 2019 15:12:41 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Break load reservations during switch_to
In-Reply-To: <87ftom4ij2.fsf@igel.home>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@linux-m68k.org
Message-ID: <mhng-a0345343-89b4-43e0-94dd-fb4f2cc851e0@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_151245_750638_47EF732C 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: me@carlosedp.com, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, joel@sing.id.au,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 marco@decred.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 06 Jun 2019 12:32:01 PDT (-0700), schwab@linux-m68k.org wrote:
> On Jun 06 2019, Christoph Hellwig <hch@infradead.org> wrote:
>
>> On Wed, Jun 05, 2019 at 04:17:35PM -0700, Palmer Dabbelt wrote:
>>>  	REG_S ra,  TASK_THREAD_RA_RA(a3)
>>> +	/*
>>> +	 * The Linux ABI allows programs to depend on load reservations being
>>> +	 * broken on context switches, but the ISA doesn't require that the
>>> +	 * hardware ever breaks a load reservation.  The only way to break a
>>> +	 * load reservation is with a store conditional, so we emit one here.
>>> +	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
>>> +	 * know this will always fail, but just to be on the safe side this
>>> +	 * writes the same value that was unconditionally written by the
>>> +	 * previous instruction.
>>> +	 */
>>> +#if (TASK_THREAD_RA_RA != 0)
>>
>> I don't think this check works as intended.  TASK_THREAD_RA_RA is a
>> parameterized macro,
>
> Is it?  Just because it is used before an open paren doesn't mean that
> the macro takes a parameter.

Yes, you're right -- the parens there aren't a macro parameter, they're the
assembly syntax for constant-offset loads.  I guess I'd just assumed Christoph
was referring to some magic in how asm-offsets gets generated, as I've never
actually looked inside that stuff.  I went ahead and just tested this

    $ git diff | cat
    diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
    index 578bb5efc085..e3f06495dbf8 100644
    --- a/arch/riscv/kernel/asm-offsets.c
    +++ b/arch/riscv/kernel/asm-offsets.c
    @@ -125,6 +125,7 @@ void asm_offsets(void)
            DEFINE(TASK_THREAD_RA_RA,
                      offsetof(struct task_struct, thread.ra)
                    - offsetof(struct task_struct, thread.ra)
    +               + 1
            );
            DEFINE(TASK_THREAD_SP_RA,
                      offsetof(struct task_struct, thread.sp)

and it causes the expected failure

     $ make.cross ARCH=riscv -j1
    make CROSS_COMPILE=/home/palmer/.local/opt/gcc-8.1.0-nolibc/riscv64-linux/bin/riscv64-linux- ARCH=riscv -j1
      CALL    scripts/checksyscalls.sh
      CALL    scripts/atomic/check-atomics.sh
      CHK     include/generated/compile.h
      AS      arch/riscv/kernel/entry.o
    arch/riscv/kernel/entry.S:344:3: error: #error "The offset between ra and ra is non-zero"
     # error "The offset between ra and ra is non-zero"
       ^~~~~
    make[1]: *** [scripts/Makefile.build:369: arch/riscv/kernel/entry.o] Error 1
    make: *** [Makefile:1071: arch/riscv/kernel] Error 2

so I'm going to leave it alone.  I'll submit a v2 with a better error message
and a cleaner sc.w/sc.d.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
