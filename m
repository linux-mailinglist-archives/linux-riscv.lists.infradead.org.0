Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB1B7711
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 12:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adnbJpmaHNZxjrZmhBBqpT2Ic9dvp2R9vKPoYF8VoqM=; b=mtfL1p+7BlZTVi
	WspMeHUCyjSnV1nyx45Bs6f7Lg29QTFkG1bgSKi00bD9e/OLW76cmo2u+KkVSZathv8GgNv8OD8T9
	xTFml9hC3v00kmSZuVUrYaqv0aiW9wH8thG65tl2/jwSqFWXLcwgFVBKMzGoEWXuz0b42FV7hYrcl
	sebE5LfLgT8ZPOxoHreGkKzZYr+7vBG4c7D8YnYdQ820D3mGEJKjM2YKR4r+5baGp+v/QTeQLD2Uj
	DtLv+JWDvPbJbVVBgW/ecD5lFPvt7EYoHoaaJasPYTCqinpoYqE+wum/yjJ4xkK5UodW6WCcPk55V
	5v+7nZKp7bQqYTNIIwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtHZ-0001io-SM; Thu, 19 Sep 2019 10:03:25 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtHW-0001iR-O4
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 10:03:23 +0000
Received: by mail-yw1-xc42.google.com with SMTP id s6so1019304ywe.5
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 03:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zGmzlodVkbk9PuySdktLAlK2VmjoJpMiz8CiaztLcU4=;
 b=nFGvNcgj0OHpxFJumDa2Ovs/fwImiZSydMwB0fQRs7Sj36jRVuZJIIuOO5ApAelTOA
 41+k3YSD8KWYA0+DVMYrkmlQRtQahxf2XdExNPg9QM9grRok/u/IQoYo600PTY4wWx+w
 8eq6uhF8zpANSTkrQSDA572dz+LQkyERbhqLuyLAwqV/o9AWj+GT+DggQxWWYUq0dzW8
 NiDsJu2Apx9YRyJnT3xoWduKO1f7SqvRB3mwcqRl4fcVYevQMizOvGS9UutDE/KcJ+l2
 30zf2EUg/wS6+NLvy6ErnWgqBTXHt9nYVujDa3qHC6Ro4Lak5s9hZdNJpMI66rRY2HsT
 vq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zGmzlodVkbk9PuySdktLAlK2VmjoJpMiz8CiaztLcU4=;
 b=fpvKqYCunvRdR7idzZlccDylwIcRHrHtiQ6vDhCr2kyi8e1svzFI/VkymNlBkhCnGH
 k/r+PwoMb4oIJardpQt7laxATtMZnTKSx9IMDVA55BvjJUtQhJQRLnhgRNd/0GYghSmk
 +yyop1HLbO1qzk2zLw+9IJthWcjmGcOsO3tFlUaYHwZe3HkliohSdKJuWeCr0eUZSVBM
 EnGFu61XQO7JpNXl/nxl5mpSXclUfejJVZOG/8EL3NoOJUZujhgH6YlcPo5bJrrlWYal
 fWAk5Y3z2OW4yRQAihAG0EFj1/DTcawYdhQoAiLHiVKgYg3+7W1nwcR5oLnkDmf9rbmj
 l4bg==
X-Gm-Message-State: APjAAAUNkpt5ZPWNFktmXu6fDXfjVDYxDJz5hOMUG5Wz6nkiXpYb2EXa
 KhND5UT+fwKo/lcBao98L+Vcu8A3C7mfExAFxNkYi6wq
X-Google-Smtp-Source: APXvYqzlpdC3yeqplykvZUm//SAQW27RajjuVHyWzNxKhwFHeDyDXhAPtXBfeBzqnd8lPooPdr3YBu/vcWAYZyJ984I=
X-Received: by 2002:a81:a401:: with SMTP id b1mr6807528ywh.280.1568887402177; 
 Thu, 19 Sep 2019 03:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <1567687574-22436-1-git-send-email-bmeng.cn@gmail.com>
 <20190910061449.GC10968@infradead.org>
In-Reply-To: <20190910061449.GC10968@infradead.org>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Thu, 19 Sep 2019 18:03:11 +0800
Message-ID: <CAEUhbmU+DhdSO729hGExs4uE3iufOFC2LEWPCug9hqvu21aM_w@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: sifive: Add ethernet0 to the aliases node
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_030322_780763_B72440A3 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On Tue, Sep 10, 2019 at 2:14 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Thu, Sep 05, 2019 at 05:46:14AM -0700, Bin Meng wrote:
> > U-Boot expects this alias to be in place in order to fix up the mac
> > address of the ethernet node.
> >
> > Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
>
> Looks good:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

What's the status of this patch? thanks!

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
