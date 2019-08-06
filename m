Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A988294A
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 03:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5stxAPea1Wzzx/xtk2Kh+Btu28V2xVTcFAwX3477APs=; b=PIQV6Ao4k1OIa0
	9n4AF4fZxg1F7cv2sSIXNw5PhMvLzlSoEorMoiKMJVxCMZjK/+Q3s8alrgadY8xlNjcgUsULo+b3B
	dNcjd+r+fVZfZ9qga42/EsVK4WRwSNRPa6J/TUoeaUf6Htlfla95djBoUuyQAZe7nGoLL0X78mb2m
	/IomiAZgcqUaWljlngO/IDsKkJWCSCf0WfI8CrNZZahGLxJ6j2VgweRPTIhCNsNtukWU/5XBkmGES
	gnKMGElPwU9aHaChk9tLpZW8Otmy1OsM9AYxhZh1lPaFM+xmWoVkcvjzunwviHm2P10FXbZp/35eK
	EVRSwUQ3YNxADg9qH6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huoQ8-0002CD-AP; Tue, 06 Aug 2019 01:37:48 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huoQ4-0002Bj-WD
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 01:37:46 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x761QTkl082746;
 Tue, 6 Aug 2019 09:26:29 +0800 (GMT-8)
 (envelope-from tesheng@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 6 Aug 2019
 09:37:23 +0800
Date: Tue, 6 Aug 2019 09:37:24 +0800
From: Eric Lin <tesheng@andestech.com>
To: <paul.walmsley@sifive.com>, <palmer@sifive.com>,
 <linux-riscv@lists.infradead.org>
Subject: Re: About __udivdi3
Message-ID: <20190806013723.GA5417@andestech.com>
References: <20190805055844.GE4292@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805055844.GE4292@andestech.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x761QTkl082746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_183745_290327_2D4B57CF 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kclin@andestech.com, dslin1010@gmail.com, rick@andestech.com,
 alankao@andestech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cc: mailing list
On Mon, Aug 05, 2019 at 01:58:56PM +0800, Eric Lin wrote:
> Hi Palmer/Paul, 
> 
> Recently I encounter a problem that the output from __udivdi3 is wrong.
> The compiler will generate __udivdi3 library call when doing 64-bit
> over 64-bit division on 32-bit platform.
> 
> It seems __udivdi3 only supports 64-bit platform.
> Do you have any comments? Thanks.
> 
> Best Regards,
> Eric Lin  

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
