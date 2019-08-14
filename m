Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4567C8D8DF
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 19:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WO1Grhjsq+yfu+/HHp6+SeU3GKoVJBcJSnbo+awq18=; b=H5s/9+rYOZAySc
	DZHDzWsIRkceORxN4UyP5Lae0+plGl0qlbUZobq85ITeW9+XF1T33cDgch2+g1JGSRW95tN8+j6Oz
	+SrMXNMCq3Gr0YY6lgAT+o6CKKi2g0OcQBtI/t2MfOEc1Pq5er9bEHuGmaDiuByzDZt6MeWDmtDCl
	m4M+IormqxM2zFeG3rZ5UcJpiJNEkeFu8fvrZbYOWC3Tc36HKO5KHKk+lmOofoPz19s7vET8C/d5x
	g7suo0ELDtZtSblBMDFCzfCCa2lDFJ59aIcSBU1BNz7GznxHeCufXUFd/Ze9xx4B/66WR5wn/eL+/
	Z78FnsoQtrYGR5O8Lt1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwgn-0004xw-Ii; Wed, 14 Aug 2019 17:03:57 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwga-0004w5-NG
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 17:03:50 +0000
Received: by mail-ot1-x344.google.com with SMTP id r20so34203221ota.5
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 10:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=VPLCSa9Mg0xoV570EQzBhdB+yL6SWWFzgzVz0WEOMmM=;
 b=KqQ8A8lxk8/sEERoY23MTYdhjwaFVgQfEetYHnne/7JmYwUyN+151g95rH1mlxfml5
 31rwg7xFPxqPpRlOEIZRo6FoT0Oh2eRFEQgERFYG9hlqhD4JlK0tpU8tIDQmNCk+6Lqo
 os8ExkAoMPjLYxqvDdqguUtEfAxcBBy48JH1OZ2ID4DtVMh22mS81YF6JJWZMQBgSkxD
 0c3TB5HfPVlqOiUP4kNNXvn8O3diQuhrVkaoT1a9TMX64zBLyfKtwRmSM+EHJHUkEDyn
 esWz3u/ULTE2iR3PJkoGCPG2/WGS2mNeZj0TA43vIQ9dVvXLhWM71IB0K33UEgneKYYz
 imGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=VPLCSa9Mg0xoV570EQzBhdB+yL6SWWFzgzVz0WEOMmM=;
 b=qPFi8nzEDcZj6t2IQ8Ns/Gv48nudwW6di831UrJ10oxhQ2NGilS0NLsPqNHaZQI7ZU
 8r9TahWU1XidxHtM7vWG4L+42VPSFNrupY/wH6QWu4SG3GCDwnBvT6PXETT0tWdilOMU
 k5ZsVKamOUfKqbMabNGyZYVvp1No7gBksZrI8Llq+Xehtl8eeHFmf79NaaH9mgDeV1/R
 AMUTrkvAYOM9JHxPwHvPJ5F6IvrgLqAov3S5jDiE1I06TWwLefaEW0kSsBl7zeQomHCj
 lMxOvZ44zEYlvnbFYdGjZjK3LcygDLvt1wBgl0ALe+G+dQlN7f1HgLA25hpfDRdsEKsc
 1++A==
X-Gm-Message-State: APjAAAVJDjgfMChlicr8Qwm7ontP6QYXmLY0ungj9JGwfXM9ISpX770h
 HYKvAF5KBKRC41pPDD4CO9xypA==
X-Google-Smtp-Source: APXvYqyqCQzLpuS6BURi8/0FnChrnzuBBO/kh4mQ+4revHO/BtVwDmErIC+VTD1JGTfiQkttw2qk/g==
X-Received: by 2002:a6b:8f82:: with SMTP id r124mr1023322iod.6.1565802220297; 
 Wed, 14 Aug 2019 10:03:40 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 x23sm428250iob.36.2019.08.14.10.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:03:39 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:03:39 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Nick Hu <nickhu@andestech.com>
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
In-Reply-To: <20190814032732.GA8989@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1908141002500.18249@viisi.sifive.com>
References: <mhng-ba92c635-7087-4783-baa5-2a111e0e2710@palmer-si-x1e>
 <alpine.DEB.2.21.9999.1908131921180.19217@viisi.sifive.com>
 <20190814032732.GA8989@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_100346_453197_C2CC1CCA 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
Cc: =?ISO-2022-JP?Q?=1B$BN%=3F&=1B=28JZong_Zong-Xian_Li=28=1B$BM{=3D!7{?=
 =?ISO-2022-JP?Q?=1B=28J=29?= <zong@andestech.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 =?ISO-2022-JP?Q?Alan_Quey-Liang_Kao=28=1B$B9b3!NI=1B=28J=29?=
 <alankao@andestech.com>, Atish Patra <Atish.Patra@wdc.com>,
 Greg KH <gregkh@linuxfoundation.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Christoph Hellwig <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 Anup Patel <Anup.Patel@wdc.com>, "glider@google.com" <glider@google.com>,
 "green.hu@gmail.com" <green.hu@gmail.com>,
 "aryabinin@virtuozzo.com" <aryabinin@virtuozzo.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "deanbo422@gmail.com" <deanbo422@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "dvyukov@google.com" <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Nick,

On Wed, 14 Aug 2019, Nick Hu wrote:

> On Wed, Aug 14, 2019 at 10:22:15AM +0800, Paul Walmsley wrote:
> > On Tue, 13 Aug 2019, Palmer Dabbelt wrote:
> > 
> > > On Mon, 12 Aug 2019 08:04:46 PDT (-0700), Christoph Hellwig wrote:
> > > > On Wed, Aug 07, 2019 at 03:19:14PM +0800, Nick Hu wrote:
> > > > > There are some features which need this string operation for compilation,
> > > > > like KASAN. So the purpose of this porting is for the features like KASAN
> > > > > which cannot be compiled without it.
> > > > > 
> > > > > KASAN's string operations would replace the original string operations and
> > > > > call for the architecture defined string operations. Since we don't have
> > > > > this in current kernel, this patch provides the implementation.
> > > > > 
> > > > > This porting refers to the 'arch/nds32/lib/memmove.S'.
> > > > 
> > > > This looks sensible to me, although my stringop asm is rather rusty,
> > > > so just an ack and not a real review-by:
> > > 
> > > FWIW, we just write this in C everywhere else and rely on the compiler to
> > > unroll the loops.  I always prefer C to assembly when possible, so I'd prefer
> > > if we just adopt the string code from newlib.  We have a RISC-V-specific
> > > memcpy in there, but just use the generic memmove.
> > > 
> > > Maybe the best bet here would be to adopt the newlib memcpy/memmove as generic
> > > Linux functions?  They're both in C so they should be fine, and they both look
> > > faster than what's in lib/string.c.  Then everyone would benefit and we don't
> > > need this tricky RISC-V assembly.  Also, from the look of it the newlib code
> > > is faster because the inner loop is unrolled.
> > 
> > There's a generic memmove implementation in the kernel already:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/string.h#n362
> > 
> > Nick, could you tell us more about why the generic memmove() isn't 
> > suitable?
> 
> KASAN has its own string operations(memcpy/memmove/memset) because it needs to
> hook some code to check memory region. It would undefined the original string
> operations and called the string operations with the prefix '__'. But the
> generic string operations didn't declare with the prefix. Other archs with
> KASAN support like arm64 and xtensa all have their own string operations and
> defined with the prefix.

Thanks for the explanation.  What do you think about Palmer's idea to 
define a generic C set of KASAN string operations, derived from the newlib 
code?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
