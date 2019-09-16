Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED1B3A11
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 14:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcOPjOmLEHUkWT6MU1ZHsGMySWydkstZyhD5S8Ol8cc=; b=fIy7Snxe4AO48z
	qeuUdbdIwaCMIag4h2n5+vsWlMGC8iZo4QM7N6xbtriNURaqnyrEEJLyZSJpPN/LGY9w1hbwkm8/V
	poh/xdYNnl+pWQRWQ3dpg0w39BuuK82Jp3a3uEcuzJj6IhhkDbfVYHs7JHSgLOM3oniUU4+Lwtv6b
	ahpzWyCfIXJ8y2KYJJXIj9sYzEpim2n2HCgl4tAXh1xUhIrEw/vz5PlRoV6l/9VrMjAbZSVBf7kzp
	u9O6igv5O9oB8BLOM2I1mzjngQ0NI4zMpR3GGVLgt8HtFjEOyArpwWFtln1gydgkvfgV7h0zZZA4w
	BC2KyS+AwkyhnGSEDStw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pug-0008AO-S8; Mon, 16 Sep 2019 12:15:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9puc-0008A4-PV
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 12:15:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B1F0E68B05; Mon, 16 Sep 2019 14:15:18 +0200 (CEST)
Date: Mon, 16 Sep 2019 14:15:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
Message-ID: <20190916121518.GA29881@lst.de>
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
 <alpine.DEB.2.21.9999.1909160456010.7214@viisi.sifive.com>
 <mvm7e68fo2g.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvm7e68fo2g.fsf@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_051522_981942_99197031 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: gregkh@linuxfoundation.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 02:00:39PM +0200, Andreas Schwab wrote:
> > Try:
> >
> >     earlycon=sifive,0x10010000
> 
> That's not what Christoph wants.

Well, what I want is auto selection if the device tree uses the
stdout-path.  My Kendryte DT uses that and it works like a charm.  If
it doesn't work for you on the U54 board chances are that your DT
doesn't have the right settings and you have to use the line that
Paul posted.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
