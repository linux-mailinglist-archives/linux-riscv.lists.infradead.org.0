Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA04F8DD05
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 20:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=280sTcqs0hsLzYH/EzjzF0wWpgsL2o1EW4OCZy8tNOQ=; b=W9lxqaXwc+p40+RkGi3LqQQEx
	NqizqMdozaDcV5AwFL2YKwODIUDvems6Z6I4f1NJZgJi/7duzgj027Ghm+LKhsTBevsIrCnz/OrUK
	kqCKlNaygfnvySTA2PC5cfaWKo+VJ/whOAM3x2W80LfaFb6lqWDUKGm33SqS7FQfQtr2Dx2BBJjsW
	gFwRCuT+vKpJnXzgYgB1Nubb+lZJRBzMnQMed9CENa4UhiSqhNC5RoHBXMClb7inQjUvWGpf07ec7
	YGSohCmxkqJVMC5XXj86ymI6uDbmAbHhgJiwdM/O1J9qGWy41RtLWv0PqCeDakxH51O9T1yNSgcgZ
	WkkXVOczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxy5M-0006yd-EV; Wed, 14 Aug 2019 18:33:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxy5D-0006xf-Rm
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 18:33:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so8947352plr.12
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 11:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=FHbaVzjuuoyrLYUA3STjtrTGQSVNOY2GYHCncQDOa8Y=;
 b=OdbU6Wp7L08K4yCF/qoOuv8FfCadAcE1CkMuHAmPFepXvJQ73qDAgLRgofGJiYU4DU
 eZO8o43/o8c0HnJUOLERUdM+i0tazX5bRDLdBffTC4mccjTswg/6iSFgs5Jj8EaD6Kgv
 mCo5Pm8rtnyfDBqBdqplQHp5POGVHh0HlPu1+pg5MFAGjzuH7nwScdgktR+nBvfvUNF/
 i+NpPaD8Tj1sFiqJRPoV8PPX8GEO7xTYZvOPpEcnucYXfePcnpate5qcxF1foiFqFVjO
 4QCayR6ih6IqE8GBvvB65b17OqT0Hv6sAOG7JKj8X8bBHW1IQztpot2Cqi380K4hrp0r
 8mnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=FHbaVzjuuoyrLYUA3STjtrTGQSVNOY2GYHCncQDOa8Y=;
 b=K0w4HS2wn+npWOsx6GeLISa3VkIlWpYwPbmbpj8IcGobwlFr5bc9QPmdgeqg8qrCBV
 JC6n+0eBH192VukL5ewVbHMbIp3iyN0Ob9nhyVBZ+p4Nlj25x4/FyeQ0r8rIiV/fk9jo
 fcEqyEORhVwCckbdw/llbxibfu8entGqx7q/ENsa89Lxxfj5HKGpKMhH98qT48WnU9xx
 8zhnTTbyCKyQ34++I5ZRCCZz3lTCOp0PFNk8ZjEZ5F+8oF8yk0nqBG+UMKk67ECqrKhR
 Tl8nczR7HhjJgl/u48mXpwWFQHQzDHqpUe1ntLUBzYkFT+RDxeDzC/zO27jbdF9WzRJ2
 jBMQ==
X-Gm-Message-State: APjAAAVL9ocgvLcqzALE+8x2gbYdiiKd7NTxwv/01LOxO7ZwiZ87rTf4
 7r7j/nUXKsFZl393wOucCtxofA==
X-Google-Smtp-Source: APXvYqxuWm/jXyZLSb4OIcBBhT0VnxfVZzx/XzeuUQ6c71yrkuHPenLi63SLvWFOGtXC6uqsSRXDJg==
X-Received: by 2002:a17:902:8f93:: with SMTP id
 z19mr682659plo.97.1565807594175; 
 Wed, 14 Aug 2019 11:33:14 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id r4sm580533pfl.127.2019.08.14.11.33.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 11:33:13 -0700 (PDT)
Date: Wed, 14 Aug 2019 11:33:13 -0700 (PDT)
X-Google-Original-Date: Wed, 14 Aug 2019 11:26:50 PDT (-0700)
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
In-Reply-To: <alpine.DEB.2.21.9999.1908131921180.19217@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-22db5681-9fed-4bf6-83fe-180b3599c654@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_113315_932364_D6BBA0A9 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: zong@andestech.com, aou@eecs.berkeley.edu, nickhu@andestech.com,
 alankao@andestech.com, Atish Patra <Atish.Patra@wdc.com>,
 Greg KH <gregkh@linuxfoundation.org>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Christoph Hellwig <hch@infradead.org>, alexios.zavras@intel.com,
 glider@google.com, green.hu@gmail.com, aryabinin@virtuozzo.com,
 tglx@linutronix.de, deanbo422@gmail.com, linux-riscv@lists.infradead.org,
 dvyukov@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 19:22:15 PDT (-0700), Paul Walmsley wrote:
> On Tue, 13 Aug 2019, Palmer Dabbelt wrote:
>
>> On Mon, 12 Aug 2019 08:04:46 PDT (-0700), Christoph Hellwig wrote:
>> > On Wed, Aug 07, 2019 at 03:19:14PM +0800, Nick Hu wrote:
>> > > There are some features which need this string operation for compilation,
>> > > like KASAN. So the purpose of this porting is for the features like KASAN
>> > > which cannot be compiled without it.
>> > >
>> > > KASAN's string operations would replace the original string operations and
>> > > call for the architecture defined string operations. Since we don't have
>> > > this in current kernel, this patch provides the implementation.
>> > >
>> > > This porting refers to the 'arch/nds32/lib/memmove.S'.
>> >
>> > This looks sensible to me, although my stringop asm is rather rusty,
>> > so just an ack and not a real review-by:
>> >
>> > Acked-by: Christoph Hellwig <hch@lst.de>
>>
>> FWIW, we just write this in C everywhere else and rely on the compiler to
>> unroll the loops.  I always prefer C to assembly when possible, so I'd prefer
>> if we just adopt the string code from newlib.  We have a RISC-V-specific
>> memcpy in there, but just use the generic memmove.
>>
>> Maybe the best bet here would be to adopt the newlib memcpy/memmove as generic
>> Linux functions?  They're both in C so they should be fine, and they both look
>> faster than what's in lib/string.c.  Then everyone would benefit and we don't
>> need this tricky RISC-V assembly.  Also, from the look of it the newlib code
>> is faster because the inner loop is unrolled.
>
> There's a generic memmove implementation in the kernel already:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/string.h#n362

That ends up at __builtin_memcpy(), which ends up looking for memcpy() for 
large copies, which is in lib/string.c.  The code in there is just byte at a 
time memcpy()/memmove(), which is way slower than the newlib stuff.

>
> Nick, could you tell us more about why the generic memmove() isn't
> suitable?
>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
