Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EEA29E74
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 20:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtyBCqSkX0PWYk+nLziCohSIDg49n72kminpUiGWccY=; b=gFYH905c+wrLIL
	kGwq/pHfXip8kL4yqp05bYIreuTfZ1C2quGNDfj7pIX42Y0BzQBgIkY0apZlE78d8FSFv2s6A77iA
	pF6J5KOCovaClAeOttw/VbOjft+ttTqzmiyONGtyHnRZ47zldghFF9ygGo1QuuUarDI5B0/ymk/4p
	WXXArm3IrT3Lt2haipjmJt7vNmG4m7Nnb4rPFiIn8+RXKQhlCUqDjWRkAvbG4UJ1WHNoYeDtvGzzZ
	uyxGUO7a2iQ2xjmYz7+xvTOO7KwXKOXKvdWnrSJz1V0wixvvNGKPXb8YCbC3ittOYToUbFuqS1N/e
	qfFmrSgnKONqWm7BOBDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFHO-0000iN-FD; Fri, 24 May 2019 18:50:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFHK-0000hQ-Jy
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 18:50:56 +0000
Received: by mail-lj1-x244.google.com with SMTP id 188so9529782ljf.9
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 11:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QOpX777PdKYx2FzNZIOtxcAjmxm00VhvM8DiVIi+gic=;
 b=Kbigf6+x+ocH2AyNwOQs10+zTlWsKMDO9/R3dOcVtJEsfBiTdREjTIWj0JV6CHVW+P
 0bdYxs0w5RFKDgoUO42v7CMvChE8nv/xYh1q2Pwve6NgLoq5FqSTUgD1HUm1NblF3zzo
 BjoFzOiEbYKqPd3c1BR5RbEaQi/NryGeokfcK84JXj1XAGhH9MoyYskyhgnH8RaQ5CLj
 WR79xxBWypA2Q46vSqio9b+1968KuT6l05TTPXDmyXuLIWiHRatJxbPHbSsn6J0rCafx
 di0JDLlRn6HJQZ0l2MVpuMDllwCLWJhHUj1Dq8BE8n0Ik7OugIwaEmocHbbgpECtINYi
 FFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QOpX777PdKYx2FzNZIOtxcAjmxm00VhvM8DiVIi+gic=;
 b=FG9V2Y9aA2A04LNuuD8faX9X2R4RsbvB/1dPYJn9MXAm3b/uPCN71Ddh+Cam5FQglM
 R9Gfm2NMxc5+gNmsDQfY2zN8Qu1gB1z4Dpb+eH8Z5yycWBvrjgz7IeXa6YVF53PQfx7X
 di1wGz2uf7bCV7J8XocyCPX4Pt/iwqE8RC6kmHV2ioERgJlzn6Tgwnzo4QyecO8ZEoep
 Os/SIrtCw4pNPyGEHs5NirFHpqTQ1cjTJ/LWRtkygOm0MbxADAvRVMEXKn5l/zy6FZs2
 UDR+fXRa3TIfNhl9gJ34hQSHsbJ2wXlCT4o+k3wUJMX4cu7BZpSVacMH0zquBoOadanU
 bqQA==
X-Gm-Message-State: APjAAAV7CeNsAvMk21UFukgvskNAioo3OX5XM5FnA5kyi3vP1FxK2JXF
 5WFJJErcmzrwGb6hW3bA+dq0+do1tT9aS+rx4FkTdDFece4=
X-Google-Smtp-Source: APXvYqz/OD3h7LRiuXDBvHSt/uffjWkPCJB8DeQ107a3CO6oNwjqh3hQPyFQHG0JlC8k7s8e1Xhc+GQxDqy1yZ0LoCQ=
X-Received: by 2002:a2e:8587:: with SMTP id b7mr42887354lji.101.1558723852754; 
 Fri, 24 May 2019 11:50:52 -0700 (PDT)
MIME-Version: 1.0
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
 <CABEDWGzHkt4p_byEihOAs9g97t450h9-Z0Qu2b2-O1pxCNPX+A@mail.gmail.com>
 <baa68439-f703-a453-34a2-24387bb9112d@ti.com>
In-Reply-To: <baa68439-f703-a453-34a2-24387bb9112d@ti.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Fri, 24 May 2019 11:50:41 -0700
Message-ID: <CABEDWGyJpfX=DzBgXAGwu29rEwmY3s_P9QPC0eJOJ3KBysRWtA@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_115054_662245_2A04EBB6 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-riscv@lists.infradead.org, gustavo.pimentel@synopsys.com,
 wen.yang99@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Kishon,

Yes. This change is still applicable even when the platform specifies
that it only supports 64-bit BARs by setting the bar_fixed_64bit
member of epc_features.

The issue being fixed is this: If the 'continue' statement is executed
within the loop, the loop index 'bar' needs to advanced by two, not
one, when the BAR is 64-bit. Otherwise the next loop iteration will be
on an odd BAR which doesn't exist.

The PCI_BASE_ADDRESS_MEM_TYPE_64 flag in epf_bar->flag reflects the
value set by the platform in the bar_fixed_64bit member of
epc_features.

This patch moves the checking of  PCI_BASE_ADDRESS_MEM_TYPE_64 in
epf_bar->flags to before the 'continue' statement to advance the 'bar'
loop index accordingly. The comment you see about 'pci_epc_set_bar()'
preceding the moved code is the original comment and was also moved
along with the code.

Regards,
Alan Mikhak

On Fri, May 24, 2019 at 1:51 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi,
>
> On 24/05/19 5:25 AM, Alan Mikhak wrote:
> > +Bjorn Helgaas, +Gustavo Pimentel, +Wen Yang, +Kangjie Lu
> >
> > On Thu, May 23, 2019 at 2:55 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
> >>
> >> Always skip odd bar when skipping 64bit BARs in pci_epf_test_set_bar()
> >> and pci_epf_test_alloc_space().
> >>
> >> Otherwise, pci_epf_test_set_bar() will call pci_epc_set_bar() on odd loop
> >> index when skipping reserved 64bit BAR. Moreover, pci_epf_test_alloc_space()
> >> will call pci_epf_alloc_space() on bind for odd loop index when BAR is 64bit
> >> but leaks on subsequent unbind by not calling pci_epf_free_space().
> >>
> >> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> >> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
> >> ---
> >>  drivers/pci/endpoint/functions/pci-epf-test.c | 25 ++++++++++++-------------
> >>  1 file changed, 12 insertions(+), 13 deletions(-)
> >>
> >> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> >> index 27806987e93b..96156a537922 100644
> >> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> >> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> >> @@ -389,7 +389,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
> >>
> >>  static int pci_epf_test_set_bar(struct pci_epf *epf)
> >>  {
> >> -       int bar;
> >> +       int bar, add;
> >>         int ret;
> >>         struct pci_epf_bar *epf_bar;
> >>         struct pci_epc *epc = epf->epc;
> >> @@ -400,8 +400,14 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
> >>
> >>         epc_features = epf_test->epc_features;
> >>
> >> -       for (bar = BAR_0; bar <= BAR_5; bar++) {
> >> +       for (bar = BAR_0; bar <= BAR_5; bar += add) {
> >>                 epf_bar = &epf->bar[bar];
> >> +               /*
> >> +                * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
> >> +                * if the specific implementation required a 64-bit BAR,
> >> +                * even if we only requested a 32-bit BAR.
> >> +                */
>
> set_bar shouldn't set PCI_BASE_ADDRESS_MEM_TYPE_64. If a platform supports only
> 64-bit BAR, that should be specified in epc_features bar_fixed_64bit member.
>
> Thanks
> Kishon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
