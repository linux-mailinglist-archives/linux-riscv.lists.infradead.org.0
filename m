Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CDA2936E
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 10:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fd9CfBvkn88SSK5TzAyb+6awuZk+bva0iQHSu1Y5Ljs=; b=ktM/7gM2T7fd3GlhchOyxAX2FF
	OsabTyq8EY5uanHzbHwslfQzxgN+dwFkBENTDwoWHctaV28YE+7wluOj49e0AsxqxFMV2+YUZ8/nP
	jAgyaqnlP9afnKzddouVzsD//AGbRiMOXRRpiq3fFfwaZMn6waE+D9Wduy1ajW+a0RtPr9dc/2K99
	Wz2FH8HnNqQFQzEsZq6a3qYM/yAgqXMWkQFensk9IuBCJoR20sxfsBtgkHNFjJdO3feubcBknv7Zf
	/N2QIpq+aYAZxZocD+m+1XJQQ14MF0Ygn3OjpU8AxL8x5be2mI0K0dam13qUHMGxy7R2meEFYqNL0
	x/xwa/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5uq-0000bm-Ob; Fri, 24 May 2019 08:51:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5uo-0000bQ-15
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 08:51:03 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4O8ovh5094264;
 Fri, 24 May 2019 03:50:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558687857;
 bh=Aje9IYjKWVDmlh2mOCB+vZPfc1Meqh7hIaNo9RIRcMs=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=QmK2v5jvRYSYeDLbuCGoHeyk2u7tDrXAVYJWkzMEHfwk+sbe2PIikuxmpzpO2thCX
 H/OydCpeq2HfxCpZJRxBjAEOUksuSCIe9E2rqTGB7k90WbtJpYzCyOVvuwPhaPXQDm
 zS0DNQTqcKxeBuATkwHI439JFkhJZTVCyAm1UDUE=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4O8ovUt048595
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 May 2019 03:50:57 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 24
 May 2019 03:50:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 24 May 2019 03:50:57 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4O8or34125751;
 Fri, 24 May 2019 03:50:54 -0500
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
To: Alan Mikhak <alan.mikhak@sifive.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lorenzo.pieralisi@arm.com>,
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@sifive.com>, Paul
 Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, <gustavo.pimentel@synopsys.com>,
 <wen.yang99@zte.com.cn>, <kjlu@umn.edu>
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
 <CABEDWGzHkt4p_byEihOAs9g97t450h9-Z0Qu2b2-O1pxCNPX+A@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <baa68439-f703-a453-34a2-24387bb9112d@ti.com>
Date: Fri, 24 May 2019 14:19:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABEDWGzHkt4p_byEihOAs9g97t450h9-Z0Qu2b2-O1pxCNPX+A@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015102_149011_DEA273CA 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi,

On 24/05/19 5:25 AM, Alan Mikhak wrote:
> +Bjorn Helgaas, +Gustavo Pimentel, +Wen Yang, +Kangjie Lu
> 
> On Thu, May 23, 2019 at 2:55 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>>
>> Always skip odd bar when skipping 64bit BARs in pci_epf_test_set_bar()
>> and pci_epf_test_alloc_space().
>>
>> Otherwise, pci_epf_test_set_bar() will call pci_epc_set_bar() on odd loop
>> index when skipping reserved 64bit BAR. Moreover, pci_epf_test_alloc_space()
>> will call pci_epf_alloc_space() on bind for odd loop index when BAR is 64bit
>> but leaks on subsequent unbind by not calling pci_epf_free_space().
>>
>> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
>> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
>> ---
>>  drivers/pci/endpoint/functions/pci-epf-test.c | 25 ++++++++++++-------------
>>  1 file changed, 12 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
>> index 27806987e93b..96156a537922 100644
>> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
>> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
>> @@ -389,7 +389,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
>>
>>  static int pci_epf_test_set_bar(struct pci_epf *epf)
>>  {
>> -       int bar;
>> +       int bar, add;
>>         int ret;
>>         struct pci_epf_bar *epf_bar;
>>         struct pci_epc *epc = epf->epc;
>> @@ -400,8 +400,14 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
>>
>>         epc_features = epf_test->epc_features;
>>
>> -       for (bar = BAR_0; bar <= BAR_5; bar++) {
>> +       for (bar = BAR_0; bar <= BAR_5; bar += add) {
>>                 epf_bar = &epf->bar[bar];
>> +               /*
>> +                * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
>> +                * if the specific implementation required a 64-bit BAR,
>> +                * even if we only requested a 32-bit BAR.
>> +                */

set_bar shouldn't set PCI_BASE_ADDRESS_MEM_TYPE_64. If a platform supports only
64-bit BAR, that should be specified in epc_features bar_fixed_64bit member.

Thanks
Kishon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
