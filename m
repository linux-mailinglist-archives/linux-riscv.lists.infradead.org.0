Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAAC1ADBF3
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 13:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8sFIV+/8fWUY1Zbo7nie6mENpkyN/bnZv7/UFlj2FCU=; b=C/Z9a88LlnGCozziEPuVbatdy
	jvCSNxmUmkeQci7evoAK3SOlgaFfNkJiqaH2PADh7chTv25L9RAgyJHx+/qidDV4AVKpUJU3OBznO
	3MeAjzCXG2+JYaNwvi7CXgj49rIPHDh1Rdqwcij6xMBB74Tchu5iftXdPrEL9kxZXc5JM/sfFHghb
	nTQlDiP5Z6/gRNVuJ55BeuXHh7PDJIIpsfELE+M6Ql/niURTDqqYD01SjiCiZ262e/s0OC8naAFZj
	rfzd3vDEo2frvluIMsECVcnoTJsd2nOzLJhid8d6GWmsvHPK5qN13ddqppVJ7ViyC4wUM0T0ZMuBb
	hTFoNQy6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOvE-0006vG-7D; Fri, 17 Apr 2020 11:12:36 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jPOvB-0006uy-Fk; Fri, 17 Apr 2020 11:12:33 +0000
Date: Fri, 17 Apr 2020 04:12:33 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 00/11] Make PageWriteback use the PageLocked
 optimisation
Message-ID: <20200417111233.GL5820@bombadil.infradead.org>
References: <20200416220130.13343-1-willy@infradead.org>
 <CAMuHMdWxhVoPCZ5+=Pf1LFpdE9vPv9GGTqTYMQP9oFz7eCxDaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWxhVoPCZ5+=Pf1LFpdE9vPv9GGTqTYMQP9oFz7eCxDaQ@mail.gmail.com>
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
Cc: linux-s390 <linux-s390@vger.kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 09:28:14AM +0200, Geert Uytterhoeven wrote:
> On Fri, Apr 17, 2020 at 12:01 AM Matthew Wilcox <willy@infradead.org> wrote:
> > v3:
> >  - Added implementations of clear_bit_unlock_is_negative_byte()
> >    to architectures which need it
> 
> I have two questions here?
>   1. Why not implement arch_clear_bit_unlock_is_negative_byte()
>      instead, so the kasan check in asm-generic is used everywhere?

That would be a larger change.  As I understand it (and I may misunderstand
it), I would need to rename all the clear_bit(), __clear_bit(), change_bit(),
... functions to have an 'arch_' prefix and then include instrumented-lock.h

>   2. Why not add the default implementation to
>      include/asm-generic/bitops/instrumented-lock.h, in case an arch_*()
>      variant is not provided yet?
> 
> Note that you did 1 for s390.

Well, s390 already uses instrumented-lock.h so I followed along with
what they're doing.  I don't think instrumented-lock.h is used at all on
these other architectures, but the whole bitops header files are such a
mess that I could easily have built a completely wrong mental model of
what's going on.

