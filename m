Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC60100920
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 17:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Le6AOC8fgIyNCIAteFsPUot5fsmKbV/G9SJoZmd8GJ8=; b=UsIu8fkI/WF2yQ/7VaHeqLekH6
	E96dQeOCIKqrFzwMs6QswLDomfXWO03W+wxME/WnjKpJqcmg+hSaII9c8stoyOhS4hyLvZCW9sC2t
	cv+CMHfsyzBhGBBB9dXoaSEVqwpoF3pHyOqYQQ1AfrcwYZf4QbYxXK4r3MkOgsYTfb6jhIp/fMWX2
	LVWVoHoIQDGgSJti8hcCftd2KSp/wv3jeiBFeabCYT+Xw+4A0kHeJ338WFep6fRsGove51uLi+vQR
	BKAVhCPbqgT8MqT9t/MKJUounMfFPVm2mzMik0fg0EbmdFIIhIvo7n5p1hpJwIxjiAG3LxSvLwxN5
	p8qRanNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjnx-0002FX-R4; Mon, 18 Nov 2019 16:23:09 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjnu-0002Da-2Y
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 16:23:08 +0000
Received: from dhcp-172-16-25-5.sw.ru ([172.16.25.5])
 by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iWjnP-0006u4-8v; Mon, 18 Nov 2019 19:22:35 +0300
Subject: Re: [PATCH v4 1/3] kasan: No KASAN's memmove check if archs don't
 have it.
To: Nick Hu <nickhu@andestech.com>, glider@google.com, dvyukov@google.com,
 corbet@lwn.net, paul.walmsley@sifive.com, palmer@sifive.com,
 aou@eecs.berkeley.edu, tglx@linutronix.de, gregkh@linuxfoundation.org,
 alankao@andestech.com, Anup.Patel@wdc.com, atish.patra@wdc.com,
 kasan-dev@googlegroups.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mm@kvack.org, green.hu@gmail.com
References: <20191028024101.26655-1-nickhu@andestech.com>
 <20191028024101.26655-2-nickhu@andestech.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <73f11f1e-6df7-c217-e05d-049d04717600@virtuozzo.com>
Date: Mon, 18 Nov 2019 19:22:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191028024101.26655-2-nickhu@andestech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_082306_121750_63C32395 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 10/28/19 5:40 AM, Nick Hu wrote:
> If archs don't have memmove then the C implementation from lib/string.c is used,
> and then it's instrumented by compiler. So there is no need to add KASAN's
> memmove to manual checks.
> 
> Signed-off-by: Nick Hu <nickhu@andestech.com>
> ---

Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
