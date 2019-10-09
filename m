Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A60D0A4F
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 10:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NOlRr7I4PP0GEthSP5xmuAMKSR+FXHEM7yKPOERC47o=; b=GWD9aDzDTp1mv/
	RfCnTEhDg1rCr0UiqHNv/0Y6Y2sYLPn9zGvFiuHll0pcMHptBdARFqpi/Hnr25mN9vU7KsxiBBMEJ
	CiVWpUVSfNFyVtO0sgcTJ+IGlkkF59BijUp+E/APFBq8muMuQTJ2QkK4fUwkNBWT+g3Y3VwpDX44n
	wDrpjPZT2PdP3OQFlB4xY9lhT2X4/J2j9Hak02Q4AHm8I9CajZymSsikTQFCQnlG331joy2RhPGAz
	qZ7bec6RyHmXay3lJDhLCLYH/N0GQ+zTwWw6o/v2lMhc5/pAV+YRtwOlCjB3rEPK/qFZXEy/5cz3g
	5tkZh+7E6x8h11PZRTuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7it-0000xn-7K; Wed, 09 Oct 2019 08:53:31 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7ip-0000x4-QN
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 08:53:29 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x998bE2t098477;
 Wed, 9 Oct 2019 16:37:14 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 9 Oct 2019
 16:53:13 +0800
Date: Wed, 9 Oct 2019 16:53:14 +0800
From: Alan Kao <alankao@andestech.com>
To: <paul.walmsley@sifive.com>, <palmer@sifive.com>
Subject: Does sfence.vma implicitly cover what fence.i does?
Message-ID: <20191009085313.GA14021@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x998bE2t098477
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015328_112353_AF82462E 
X-CRM114-Status: UNSURE (   2.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul, Palmer,

In arch/riscv/include/asm/tlbflush.h, the comment says

> Flush entire local TLB.  'sfence.vma' implicitly fences with the instruction
> cache as well, so a 'fence.i' is not necessary.

and in the privileged spec, it is stated that

> Executing an SFENCE.VMA instruction guarantees that any previous stores
> already visible to the current RISC-V hart are ordered before all subsequent
> implicit references from that hart to the memory-management data structures.

So my question is straightforward.  Is I-cache a kind of memory-management data
structure?  am I missing something here?

Thanks for any clarification.

Alan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
