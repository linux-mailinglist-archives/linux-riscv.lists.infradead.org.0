Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829DA8C56F
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JvJKccaEcbjyhSFiwLbFauqjDI0l+vCrvy6LdQ+yHM=; b=ZWH+58LXCmzVuZ
	6e8IcIkz85zUzb6WZJ57G8NB40yAWyvsk9sAkfTQiuDaJTJuLWuM4UBY2WtcEbpfZ4gniDStifWUh
	5cfOFQWgfSir62Kc5V4l9lgxJ7Og37HYXPhHmmWPdYauMU9TY2h3SoCL7VZT8Oww4w25GgXJYHVP2
	mJchb2EdxC7jMoDL+fTXza5yCUKl7vc/aykrkGj34YB2ITKgaDNoL0RZIvTrK9YmFlY9o1v3dpSRI
	DwT+kx414vOaiMvUND41gdVYwZKOR4R4iHCfMUbteT5plbgj9mLgTC375iqs5MvFwJ9I17P3T6LhU
	u6t1PJpNmyiN87PqGQ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhky-0003fq-PW; Wed, 14 Aug 2019 01:07:16 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhku-0003fJ-FO
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:07:14 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7E0tamm019296;
 Wed, 14 Aug 2019 08:55:36 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 14 Aug 2019
 09:07:07 +0800
Date: Wed, 14 Aug 2019 09:07:08 +0800
From: Alan Kao <alankao@andestech.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 13/15] riscv: clear the instruction cache and all
 registers when booting
Message-ID: <20190814010707.GA22925@andestech.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-14-hch@lst.de>
 <20190814010013.GA18655@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814010013.GA18655@andestech.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7E0tamm019296
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_180712_770626_50B9A73F 
X-CRM114-Status: UNSURE (   4.46  )
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, Paul
 Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Please ignore the previous mail, I must have missed this part of the patch,
> 
> > +	csrr	t0, CSR_MISA
> > +	andi	t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
> > +	bnez	t0, .Lreset_regs_done
> > +

In S-mode we were not able to obtain the ISA information in misa, but now
the nommu port is in M-mode so this is rather straightforward.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
