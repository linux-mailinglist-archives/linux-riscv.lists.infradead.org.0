Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AF6DFB81
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 04:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5mo30Wi27esoazmF+BKRXTQykiKL2KsazdVdABDDnI=; b=ETrwsqhb2iiv/Y
	l8GnvCaDDfkXK3pabFzV/8FG3+eeSjW+AdRgtBP/AHFPWHXo/zlYtHpiSFAHhwBw9tSPCsrGK8+5z
	W33Qp+VizFn0c29CyEpMxjXdibrBiVemrNhcCrwNbNlLWRZ1rXgaIFCjIl4OiH91juK1FMtmZn7Xd
	A50Tmhsc2T/9KrpZNqu41rFWn3Yd5a6+CB4VBhm1/h9cWBXlB/7vGKzQHn5vabGhuUPLr4t4zo4qI
	vH7ZmyV7oIVYni++YP54axdwL/AH7ubBPTQVw64ul74fF5MaiSL99mgOJbfBxMs1YunEy47R1dn3L
	rn+jYTc/PGqz/ciFUf4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjgB-0003b9-NF; Tue, 22 Oct 2019 02:13:47 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjce-0007GD-Ay
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 02:10:10 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x9M1q10Y068205;
 Tue, 22 Oct 2019 09:52:01 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 22 Oct 2019
 10:09:00 +0800
Date: Tue, 22 Oct 2019 10:09:00 +0800
From: Nick Hu <nickhu@andestech.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 1/3] kasan: Archs don't check memmove if not support it.
Message-ID: <20191022020900.GA29285@andestech.com>
References: <cover.1570514544.git.nickhu@andestech.com>
 <c9fa9eb25a5c0b1f733494dfd439f056c6e938fd.1570514544.git.nickhu@andestech.com>
 <ba456776-a77f-5306-60ef-c19a4a8b3119@virtuozzo.com>
 <alpine.DEB.2.21.9999.1910171957310.3156@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910171957310.3156@viisi.sifive.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x9M1q10Y068205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_191008_661374_7B4518FC 
X-CRM114-Status: UNSURE (   8.95  )
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
Cc: kstewart@linuxfoundation.org, aou@eecs.berkeley.edu, alankao@andestech.com,
 corbet@lwn.net, gregkh@linuxfoundation.org, palmer@sifive.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, alexios.zavras@intel.com,
 Anup.Patel@wdc.com, glider@google.com, allison@lohutok.net,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, tglx@linutronix.de,
 atish.patra@wdc.com, linux-riscv@lists.infradead.org, dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 07:58:04PM -0700, Paul Walmsley wrote:
> On Thu, 17 Oct 2019, Andrey Ryabinin wrote:
> 
> > On 10/8/19 9:11 AM, Nick Hu wrote:
> > > Skip the memmove checking for those archs who don't support it.
> >  
> > The patch is fine but the changelog sounds misleading. We don't skip memmove checking.
> > If arch don't have memmove than the C implementation from lib/string.c used.
> > It's instrumented by compiler so it's checked and we simply don't need that KASAN's memmove with
> > manual checks.
> 
> Thanks Andrey.  Nick, could you please update the patch description?
> 
> - Paul
>

Thanks! I would update the description in v4 patch.

Nick 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
