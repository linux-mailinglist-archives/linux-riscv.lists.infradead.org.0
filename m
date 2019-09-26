Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF34BEC53
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Sep 2019 09:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjlqjmeXDDitn/8t2PU2Wr7vczV2n1NwdW87vBKkY5s=; b=DiwsD2k49uG2P3
	x9QJiiVT6qEg+oQesHQnpEGJENhmGhxm1d7HRPgJK2VcPh23ZTHfHiZC/EywktE3ywaGKUDSsh33/
	WXdFtNq0U/VoQ9jgwCDn8iAF7Z2fRVYt7uDd/Ko6atNNg1WbC5n6QXJkgy3kqJs0vG5X4H2qdQdLo
	EgQbRxcqv6X6e/u28eQmY43kmrSzedVCGlvuycDvWTO9G44lqGNhO3wSKoP8PSsEQRo974R2lypqy
	ZBDZ8v2KXnd7q7ldJ4WpOE4H1cXDWZBUbgT+v3tdKH8O5/G5y2Iedvr1jk7DmVJsfKSz1Ez+T9asO
	kZVYKBneU3rq2YFryRmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDNsA-0006WO-SO; Thu, 26 Sep 2019 07:07:30 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDNrj-0006UD-OM
 for linux-riscv@lists.infradead.org; Thu, 26 Sep 2019 07:07:18 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D85F44A1F95793E87A90;
 Thu, 26 Sep 2019 15:06:55 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.137) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 26 Sep 2019 15:06:53 +0800
Subject: Re: [PATCH] riscv: move flush_icache_range/user_range() after
 flush_icache_all()
To: Andreas Schwab <schwab@suse.de>
References: <20190926022938.58568-1-wangkefeng.wang@huawei.com>
 <mvm8sqb4khw.fsf@suse.de>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <52697712-e91f-c5a1-0db0-6b3517e37cce@huawei.com>
Date: Thu, 26 Sep 2019 15:06:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <mvm8sqb4khw.fsf@suse.de>
Content-Language: en-US
X-Originating-IP: [10.133.217.137]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_000705_184917_25B8FE89 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2019/9/26 14:52, Andreas Schwab wrote:
> https://lore.kernel.org/linux-riscv/mvm7e9spggv.fsf@suse.de/
> 
> Andreas.
> 
Hi Andreas, my change is wrong.

For no SMP,  lkdtm built ok because flush_icache_all() is defined as local_flush_icache_all() macro,
but for SMP, the reason of build error is that flush_icache_all() implementation is not exported as
you mentioned in your patch,  and this does make allmodconfig broken.

LKDTM is used to test the different dumping mechanisms by inducing system failures at predefined
crash points, riscv will enable kernel dump in the future, this module is useful to test this mechanism.

so, it's necessary to fix it, right, any comment, thanks.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
