Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B40C10D192
	for <lists+linux-riscv@lfdr.de>; Fri, 29 Nov 2019 07:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9gzDVgORUgJl6nSk2eG/lqh5RR8nK4UksyzbgrVHVg=; b=FpSbbyb0HlXqCW
	rbpd0iO6fYaUuDucEImz/UtW+M3y5BVcfb3o5gpwOLvf1ME6R2N7woi+L0b+y6f1m2YYGhWrdjUrs
	i1InAOZGiJWyK1s79RCUQnYG6va08aY3VghjoESPFiIOv7KHfOqiD24o5F/lYzOgju19/+fI2039l
	QTlMgWVL9pKCo31BpJU9PXySpb6yJm2IVtNbRw1U30VaIA8EWT0i0h8cIC1KlaQVtqKBZ16ZHQuoY
	QLM9jvf0lBG8wx3woEaL/dq3eS4QUy7024YBTCeScIgQ2kbPSwSX0V7DA06Ba2vjKz12KrX9Th0gr
	Kp1ft27W+8D/2LRO8Dbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaa4Y-0003Jy-ME; Fri, 29 Nov 2019 06:48:10 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaa4O-0002uz-D7
 for linux-riscv@lists.infradead.org; Fri, 29 Nov 2019 06:48:02 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 68ABB2318285DAA20978;
 Fri, 29 Nov 2019 14:47:47 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.137) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 29 Nov 2019 14:47:42 +0800
Subject: Re: [PATCH] riscv: only select serial sifive if TTY is enabled
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20191024072003.87116-1-wangkefeng.wang@huawei.com>
 <alpine.DEB.2.21.9999.1910240911590.20010@viisi.sifive.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <b1f38e52-f34f-b867-bc18-1549333200e5@huawei.com>
Date: Fri, 29 Nov 2019 14:47:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1910240911590.20010@viisi.sifive.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.137]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_224801_023556_EA78B210 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019/10/25 0:12, Paul Walmsley wrote:
> On Thu, 24 Oct 2019, Kefeng Wang wrote:
> 
>> There is some warning if TTY is not enabled, and lead to
>> build error, only select serial sifive if TTY enabled, and
>> this also makes randconfig happy.
>>
>> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> 
> Thanks for doing these randconfig tests!  Queued for v5.4-rc.

Hi Paul, this patch is not in v5.4 :)

> 
> 
> - Paul
> 
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
