Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E2D5D30B
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 17:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nIG43Y10OD+mIZfyjdWqo3BxjtxVbwuDLuVEm+efhgs=; b=kzz1P+xd5WDlGpKR+bav1yv/z
	4wDWgao4GKrPI73BZqTgkuMCjx6/f97Rj7ScXz/ggg35/E9WfTKZ4bVLmNjivwWOi9ryjs0svnCt1
	acweGSVEx4JGex+PK4hhwXKHKZhCZFxRWWQYiBfDM2K4hrLOkrZoUDfqvfpmKhAR9GVkQATfoWFKz
	LPt3ZCg9XgeIx+J9CCWNUuLcmvaYd4xvcpjokgRLDIFkP/c4K9koDu6pRrxrfk4VlMUrlbWUCREJh
	/fTQM4KcOUPyGYm0NsQwdtA0G20hrszAyR+fhJueyAu4S2Mv6PM+htTzsN34lF4O2udVEK3vp2KDg
	MFb98+Lfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKrU-0004vB-F8; Tue, 02 Jul 2019 15:38:29 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKrC-0004kt-Pv; Tue, 02 Jul 2019 15:38:12 +0000
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A808B24000E;
 Tue,  2 Jul 2019 15:37:39 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config
 in arch/Kconfig
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Catalin Marinas <catalin.marinas@arm.com>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <20190701175900.4034-2-alex@ghiti.fr>
 <alpine.DEB.2.21.9999.1907011146550.3867@viisi.sifive.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <8678d648-2ead-61dd-0d03-277e81355fd7@ghiti.fr>
Date: Tue, 2 Jul 2019 17:37:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1907011146550.3867@viisi.sifive.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_083810_998144_7F04E327 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "H . Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/1/19 8:51 PM, Paul Walmsley wrote:
> Catalin, Palmer,
>
> On Mon, 1 Jul 2019, Alexandre Ghiti wrote:
>
>> ARCH_WANT_HUGE_PMD_SHARE config was declared in both architectures:
>> move this declaration in arch/Kconfig and make those architectures
>> select it.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Since the change from v2 to v3 was minor (the removal of the "config
> ARCH_WANT_HUGE_PMD_SHARE" line from the arm64 port), I'm planning to
> apply your Reviewed-by:s and acks from
>
> https://lore.kernel.org/linux-riscv/20190603172723.GH63283@arrakis.emea.arm.com/
>
> https://lore.kernel.org/linux-riscv/mhng-4d1d4acb-f65f-4ed4-bc86-85a14b7c3e16@palmer-si-x1e/


Ingo acked this patch too in that case. Sorry for that, I was unsure if 
I could add them.

Thanks for your answer,

Alex


>
> If there's any objection, please let me know as soon as possible.
>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
