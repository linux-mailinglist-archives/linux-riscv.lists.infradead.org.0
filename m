Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B966E8451F
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 09:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wTGN/0FYpDrWnMQz3Ish0rllM9f8eupKu7buHJCupxg=; b=mYSQIbAgOoKKEprJZCmjYC6jf
	/86Z/wUJqVvuSgpWczyXw/M1A5KTlD6b5T4tYHeVqQ4YNIItJTNXiylAx6WqrBi5LVKDcUXJWDlvZ
	r56Nvnqd6stZM0jEzE9VcBc2721svCkOWVbPUuc1/65kpgh1AjSXHYO6heIhsoVXr9odz/t8uUnOj
	zlfEbI4M7PO0EYlEjYsgklB5QTEEgusuRlMAey9G0/IwPUAPq4BP2xVOIjT+rf8wrk1kz1aqMVnRG
	Op/Eax6FVbh/NluNjtZL1cDu+bt4o/N3uzfiDNRGpWhnhb6Qy3Kkr0gydJ/JdThysjW2ShpR9jF1U
	87h5DE7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvG0m-0007ez-7r; Wed, 07 Aug 2019 07:05:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvG0h-0007et-Aj
 for linux-riscv@bombadil.infradead.org; Wed, 07 Aug 2019 07:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4mDLaL3DkuB2WbR0e1ggrWcP4UbYYCWhGEa9qaDpcG4=; b=c1G6MPbjtu7P7Up+XxEgIZDwnr
 EVKRGuGN5gTBJ2eByhuvzISnu0o50tvvkNNu2hlz4ebsJE7jtQfgJafafVmP3CasWJJmbhx4NKSgc
 lXtvyHrJsFzZCvlgI/CdaJnUdTu/2BRdfWixI1u/eF+RehvMgQfjuEEbQlIdLf0NXCOgMqYvdlbnu
 sgEsl9LaWueX3wGnRPlhKUPEu/xiTtnJ7IVS80JWZu7srdp58VhmbDoCHEEU6wJFsnyGGKOsa2puY
 Kp+O3q0f+qCjPvXtkHuSGocfMii7H7C+8J5mUNa5SbfK2SwexMIz02fOcnjHYT20oawq5mmnq+8l2
 jNm2veBw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvG0e-0003iu-EB
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 07:05:21 +0000
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7F6B9200006;
 Wed,  7 Aug 2019 07:04:40 +0000 (UTC)
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
To: Christoph Hellwig <hch@infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
References: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
 <20190802084453.GA1410@infradead.org>
 <alpine.DEB.2.21.9999.1908061648220.13971@viisi.sifive.com>
 <20190807054246.GB1398@infradead.org>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <c331e389-5f33-634a-f62f-e48251ca4cfe@ghiti.fr>
Date: Wed, 7 Aug 2019 09:04:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807054246.GB1398@infradead.org>
Content-Language: fr
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 8/7/19 7:42 AM, Christoph Hellwig wrote:
> On Tue, Aug 06, 2019 at 05:02:03PM -0700, Paul Walmsley wrote:
>> The rationale is to encourage others to start laying the groundwork for
>> future Sv48 support.  The immediate trigger for it was Alex's mmap
>> randomization support patch series, which needs to set some Kconfig
>> options differently depending on the selection of Sv32/39/48.
> Writing a formal todo list is much better encouragement than adding
> dead code.  Th latter has a tendency of lingering around forever and
> actually hurting people.
>
>>> but actively harmful, which is even worse.
>> Reflecting on this assertion, the only case that I could come up with is
>> that randconfig or allyesconfig build testing could fail.  Is this the
>> case that you're thinking of, or is there a different one?  If that's the
>> one, I do agree that it would be best to avoid this case, and it looks
>> like there's no obvious way to work around that issue.
> randconfig or just a user thinking bigger is better and picking it.
>
>>> Even if we assume we want to implement Sv48 eventually (which seems
>>> to be a bit off), we need to make this a runtime choice and not a
>>> compile time one to not balloon the number of configs that distributions
>>> (and kernel developers) need to support.
>> The expectation is that kernels that support multiple virtual memory
>> system modes at runtime will probably incur either a performance or a
>> memory layout penalty for doing so.  So performance-sensitive embedded
>> applications will select only the model that they use, while distribution
>> kernels will likely take the performance hit for broader single-kernel
>> support.
> Even if we want to support Sv39 only or Sv39+Sv39 the choice in the
> patch doesn't make any sense.  So better do the whole thing when its
> ready than doing false "groundwork".


I took a look at how x86 deals with 5-level page table: it allows to handle
5-level and 4-level at runtime by folding the last page table level (cf
Documentation/x86/x86_64/5level-paging.rst). So we might want to be able to
do the same and deal with that at runtime.

Regarding my series about mmap, x86 does not care about the width of the
the address space and sets values of ARCH_MMAP_RND_BITS_MIN/MAX based
on 32bit or 64bit (but then does not respect the magic formula as in arm64).

And FYI my series and your patch are already in linux-next.

Thanks,

Alex


> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
