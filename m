Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC1D29352
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 10:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8fEulswz20Jg2jou9lK9P8sOCWYBfkGvskik0Q3H8y0=; b=SOWxqkcK8RpVFlB5TyazjiHSWl
	iGh/O9RyFoJn1GTodIG5R1jPaUi4QK5yN2ioF3BHrFtmii0tWgrnCnx1yGk9D0Islvimj8Ud0jwPF
	dUdG+x9LbKCzZphu2ujHIy3r8k+pGfVkNthTcPBb1Bha6nnr1SrnvjAkB7i5EnQ95X25BiovvC9KV
	/pVydXSrbNJTgZmgaBhj07XeSk7ZAjOoZ4hQoS0tf3OAih0I5dnReW5o7KxAa/PRGA186q3sKYJw1
	VBQcIN/TxpyOYqjLi7/F3LLTnofuhxZWBokryvfylU54EhWL0A/R7Irxc0Yh7hrJdX27bl6ZCvIyr
	zW91qIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5n7-000617-Ps; Fri, 24 May 2019 08:43:05 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5n4-00060K-N1
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 08:43:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4O8gp4B024403;
 Fri, 24 May 2019 03:42:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558687371;
 bh=fin7XhZZt8YCoI8vomIMRZu6HitZPEiD+fW8ZGt0YLk=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=RryeXkT1iXd8RNGAW3xhN0h2WU2blOPNNoJy1Kp+PfxFAN5vMjk6M4hUTHDMA4L48
 zVl8dDvCPgyj3Ah89N2m6KAJx9kVOTkB/sZnqP5mOjeB8z3ah7UWEG+7/Vg3SDjB0l
 P0M5EhH5IzkqNvagmza8Yu+KCmoN2mWKgNqiZYm0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4O8gpvA038357
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 May 2019 03:42:51 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 24
 May 2019 03:42:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 24 May 2019 03:42:50 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4O8glfl071191;
 Fri, 24 May 2019 03:42:48 -0500
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
To: Alan Mikhak <alan.mikhak@sifive.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lorenzo.pieralisi@arm.com>,
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@sifive.com>, Paul
 Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
 <CABEDWGyb3zTaiRqt7-mvrS6Dvhu0Fkhjp4nvaJ-vaJrD3n=0_Q@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <0e4cfe24-adf6-8966-9f58-69f7aba7a6fa@ti.com>
Date: Fri, 24 May 2019 14:11:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABEDWGyb3zTaiRqt7-mvrS6Dvhu0Fkhjp4nvaJ-vaJrD3n=0_Q@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_014302_852253_2763CFC6 
X-CRM114-Status: GOOD (  14.11  )
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



On 24/05/19 5:27 AM, Alan Mikhak wrote:
> +Bjorn Helgaas
> 
> On Thu, May 23, 2019 at 2:46 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>>
>> Set endpoint controller pointer to null in pci_epc_remove_epf()
>> to avoid -EBUSY on subsequent call to pci_epc_add_epf().
>>
>> Requires checking for null endpoint function pointer.
>>
>> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>

Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/pci/endpoint/pci-epc-core.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
>> index e4712a0f249c..2091508c1620 100644
>> --- a/drivers/pci/endpoint/pci-epc-core.c
>> +++ b/drivers/pci/endpoint/pci-epc-core.c
>> @@ -519,11 +519,12 @@ void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf)
>>  {
>>         unsigned long flags;
>>
>> -       if (!epc || IS_ERR(epc))
>> +       if (!epc || IS_ERR(epc) || !epf)
>>                 return;
>>
>>         spin_lock_irqsave(&epc->lock, flags);
>>         list_del(&epf->list);
>> +       epf->epc = NULL;
>>         spin_unlock_irqrestore(&epc->lock, flags);
>>  }
>>  EXPORT_SYMBOL_GPL(pci_epc_remove_epf);
>> --
>> 2.7.4
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
