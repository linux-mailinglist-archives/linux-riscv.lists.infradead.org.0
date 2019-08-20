Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4226795804
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 09:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIkDXpNLO2KtvvLngHRRPWNKKOe8ZmAvPJ3AeLr6BwI=; b=c2sDX3paSqGbAo
	/F/403QUB7cwazk7GrAUu1IHiqR+girc0J/WDXZAypcH9krwHtJxMHArybRtQZM7i0Scz6xN0qijE
	IoiomNLX3/VLP4k+gPBu4rHl1fPhS2RgIS1LLyXwjMk5bTMOZXicZwut5UJ+vZNajIxtOuTqT6gq+
	t1gEbG2N9tABOxZ4LDw8BDGJlRA8hVlS2ZaKtHWfhwPvcSNAkwNVcpOH4J4bdNDg7e3CQQX6qbXgP
	Pn4dUdlauqTqYv0FNXSMCV5Fh9ce+owv3VKZsGcuHsydpOUD+vYdyMSqTfws4sEBZveEJDieuMASV
	lMVYb/AfrK8j21jrNQAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyMx-0002UD-KJ; Tue, 20 Aug 2019 07:15:51 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyME-0000ye-34
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 07:15:08 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46CMW84G2Cz1rJh4;
 Tue, 20 Aug 2019 09:15:00 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46CMW83CNvz1qqkJ;
 Tue, 20 Aug 2019 09:15:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id hgek4RhEvX4I; Tue, 20 Aug 2019 09:14:59 +0200 (CEST)
X-Auth-Info: cfJnge3W34ep21vK8LNYWSq+oBbl20n/Lm1XsjLjpAA2A+eyEau2plN2hZlALXyM
Received: from hawking (charybdis-ext.suse.de [195.135.221.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 20 Aug 2019 09:14:59 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: "hch\@infradead.org" <hch@infradead.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <20190820030641.GA24946@infradead.org>
X-Yow: I think my CAREER is RUINED!!
Date: Tue, 20 Aug 2019 09:14:58 +0200
In-Reply-To: <20190820030641.GA24946@infradead.org> (hch@infradead.org's
 message of "Mon, 19 Aug 2019 20:06:41 -0700")
Message-ID: <mvmo90kl34d.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_001506_486885_D67E5DC0 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 19 2019, "hch@infradead.org" <hch@infradead.org> wrote:

> This looks a little odd to m and assumes we never pass a size smaller
> than PAGE_SIZE.  Whule that is probably true, why not something like:
>
> 	if (size < PAGE_SIZE && size != -1)

ITYM size <= PAGE_SIZE.  And since size is unsigned it cannot be == -1
at the same time.

> 		local_flush_tlb_page(start);
> 	else
> 		local_flush_tlb_all();
>
> ?

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
