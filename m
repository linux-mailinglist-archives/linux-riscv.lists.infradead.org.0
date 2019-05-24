Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E93829372
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 10:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/le2hMAlk6BfenBH5akk+kgYEIB4Dyv99PpFX2/nFZM=; b=gFi+NQJ2Ob0QXo5/OKdzjc++GN
	7zNsOUwgsG9mfGDD+Zk2gexlDngu69DMTuiY905hnaktm/6rUJ+V8F9/x3s/leXR0GEXjUJhyx8VE
	q7+N/tygnewUqE5OtWw/PvwQcQIiLjaVlBokeVDRex4BbzMe/gs4/RJSsS1Io1OPdMHVOoyVrhQA7
	rvB3H2yUCpy5sDpcns3nOCHd7uWXOLeipyKh8kGq1y1LmeGfdQ8fSu7zTP0jIZrGpJb8YL63PqpuV
	DebPA1wbzgbAuv+cZsJ8y6mCnJJhq6BHbnAW64ChGRGXHkFDKn+9cKgwH74gLtBc4tj0q7FNVx9kM
	8nJu2dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5vk-0000hj-D7; Fri, 24 May 2019 08:52:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5vi-0000hO-9I
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 08:51:59 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4O8psb4026496;
 Fri, 24 May 2019 03:51:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558687914;
 bh=tVT52Dzdto40qLgUQsoiwvxwFkE3lFwq1Lgc68900vM=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=Kcvrh1kXVoX/YJiWEs8BfbWsIDglItrja6+dBLtuB9DVYFkvrV0oRVqmyjZk4oTp7
 grZVsyeaA5YhCj8O6plfJUE8oIS279hb7BaWMb/8nIEa55c8C9QM97qR75Kj193kCD
 SMgZoWRxEJuw2ANWHSTkyUNAbtbzE+Ks3V0XzjJU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4O8psvr094843
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 May 2019 03:51:54 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 24
 May 2019 03:51:54 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 24 May 2019 03:51:54 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4O8poJT045361;
 Fri, 24 May 2019 03:51:50 -0500
Subject: Re: [PATCH v2] PCI: endpoint: Clear BAR before freeing its space
To: Alan Mikhak <alan.mikhak@sifive.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lorenzo.pieralisi@arm.com>,
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@sifive.com>, Paul
 Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, <gustavo.pimentel@synopsys.com>,
 <wen.yang99@zte.com.cn>, <kjlu@umn.edu>
References: <1558648647-14324-1-git-send-email-alan.mikhak@sifive.com>
 <CABEDWGy8PhHqqRPpZjVrd3VtwxmtxV+Gs-8442e9EvKjFQLELw@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <a1787130-9f36-3e0f-f35e-640a47dfdf5f@ti.com>
Date: Fri, 24 May 2019 14:20:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABEDWGy8PhHqqRPpZjVrd3VtwxmtxV+Gs-8442e9EvKjFQLELw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015158_405723_9ED249CA 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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



On 24/05/19 5:20 AM, Alan Mikhak wrote:
> +Bjorn Helgaas, +Gustavo Pimentel, +Wen Yang, +Kangjie Lu
> 
> 
> On Thu, May 23, 2019 at 2:57 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>>
>> Associated pci_epf_bar structure is needed in pci_epc_clear_bar() but
>> would be cleared in pci_epf_free_space(), if called first, and BAR
>> would not get cleared.
>>
>> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>

Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/pci/endpoint/functions/pci-epf-test.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
>> index 27806987e93b..f81a219dde5b 100644
>> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
>> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
>> @@ -381,8 +381,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
>>                 epf_bar = &epf->bar[bar];
>>
>>                 if (epf_test->reg[bar]) {
>> -                       pci_epf_free_space(epf, epf_test->reg[bar], bar);
>>                         pci_epc_clear_bar(epc, epf->func_no, epf_bar);
>> +                       pci_epf_free_space(epf, epf_test->reg[bar], bar);
>>                 }
>>         }
>>  }
>> --
>> 2.7.4
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
