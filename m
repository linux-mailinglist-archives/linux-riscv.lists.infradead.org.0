Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAEC31315
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 18:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZEY2q4OjdfeTd1H0zayIks4wknKB0KKQBtB+JM+58w=; b=rmMKklDIaRahQz
	bjaMzoePaAZAkP48e3ZSTGu3a9VX/sYoX3uhAUCjpsTPjsS3bLt6+77eJLBx1J0H2FnEbn72/kDSG
	+jsISTUctixuccSH0hwqpfJttrEYRls8F98+a5cyyX6lgGxYB02uxUN9AkKbJIZ2lL+Ewlf63kZHe
	IM80VOkithxCZzHnt3DlRYEhLnRwRjBQScmhoEQr8P3Kz7z4I46lvjvYHvClCVFr/VjD/pQshoiH1
	a6tKRx5pkCiqUO33GdP/XZGXu+oDpUYE6M7SdFv16wNwcF58Fhv5m9qHmRJYTP663pPZ6g6ekl2V/
	1xoy3rrHwsXz4AcrHGyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWklu-0003cj-36; Fri, 31 May 2019 16:52:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWklp-0003bH-4C
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 16:52:46 +0000
Received: by mail-lj1-x244.google.com with SMTP id e13so10227317ljl.11
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 09:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v6H5MAo72kBrswxB03BJ2HpgepSBZLZhL5ogd8zupLU=;
 b=OG1KV6FZLFhvOSN7fp5zLXlrz323yy7uJi4Is23x/8ff/t7fSs6pfOXJAFwM3v/wC6
 b9K7GkitQpHZawyKE3kZzpHbUuUtubBxLFGtKQ2iRJuiB3CI/MtfFoiCW29iMCQ8dHlN
 QW4ksaLmQ68g1benk9nLF3YHPQ85XFEH5RDoUn+xKSZoOZtOcUIY2YJIT/2lrQR9EcJX
 bNwq2XPMP9F+dNHBk8DrarZ3IP1HCvYQ4wsw6VYNZrPGenSK8cfmfLXlkbFLnLqByxJP
 OENBIcoFg7Xni3OlGtxAWkC4nxDOrxtqSZecSg+B09IXvXCPXiIzA7QrmluirCajIzO0
 LhkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v6H5MAo72kBrswxB03BJ2HpgepSBZLZhL5ogd8zupLU=;
 b=lKsQLMxCX5mNWmWKVDDghsw21DNbVPxlEo1tVCToh8v65AD1EkTnYhkxfxPEssBtSO
 Yf4MILhl+de7/9oFEdupyfu1QdZYiLw06KtM0DTHIhMCBxJdYtFraWYAS5GncLzq9Elt
 o5J/k+vyY0/zfWkF9KbEg9JuoWFzuKYvQefJxxAIfj/FsdqT+bnXKs2nPp/1s2kaHkSu
 5sX9PY8vKf0mQj/bCy4pM9/Zn16T0qsZ3H/6nXZP3VA/iNdB7tHhMdq5U5P3kpWh46kz
 BFROird095d++aVim1kLlGctByUsmLwvxJ6Xi5phNCDT0o8R7dCtD5N0v8CTmMchd1AB
 r+kg==
X-Gm-Message-State: APjAAAU/F58Zwq/pKU1HWi5DUQrSrFKiVyrElSdX/a54dSJjBsoUDix+
 h31RDkUSsXA7/NvyX/Fqlk5pBH+O2jdvlFPPgSNs7A==
X-Google-Smtp-Source: APXvYqx+7FWVD3TK8yBjAqQZMlMkuV+lN5tCxVL10+M37w8cNW4yMIcMcmxP3Kt1PI37oQbyVpTXf/64SZ+48DwdR9o=
X-Received: by 2002:a2e:864e:: with SMTP id i14mr6485594ljj.141.1559321562622; 
 Fri, 31 May 2019 09:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
 <CABEDWGzHkt4p_byEihOAs9g97t450h9-Z0Qu2b2-O1pxCNPX+A@mail.gmail.com>
 <baa68439-f703-a453-34a2-24387bb9112d@ti.com>
 <CABEDWGyJpfX=DzBgXAGwu29rEwmY3s_P9QPC0eJOJ3KBysRWtA@mail.gmail.com>
 <96365941-512b-dfb2-05b7-0780e8961f6c@ti.com>
In-Reply-To: <96365941-512b-dfb2-05b7-0780e8961f6c@ti.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Fri, 31 May 2019 09:52:31 -0700
Message-ID: <CABEDWGyQHh=8fmZFAK6acecDSF_-pfpa9NCZOQ--WDhZiZPihw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_095245_225777_4F516524 
X-CRM114-Status: GOOD (  15.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-riscv@lists.infradead.org,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, wen.yang99@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 9:37 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Alan,
>
> On 25/05/19 12:20 AM, Alan Mikhak wrote:
> > Hi Kishon,
> >
> > Yes. This change is still applicable even when the platform specifies
> > that it only supports 64-bit BARs by setting the bar_fixed_64bit
> > member of epc_features.
> >
> > The issue being fixed is this: If the 'continue' statement is executed
> > within the loop, the loop index 'bar' needs to advanced by two, not
> > one, when the BAR is 64-bit. Otherwise the next loop iteration will be
> > on an odd BAR which doesn't exist.
>
> IIUC you are fixing the case where the BAR is "reserved" (specified in
> epc_features) and is also a 64-bit BAR?

Correct. If BAR0 is specified in epc_features as reserved and also
64-bit, the loop would skip BAR0 by executing the 'continue'
statement. In this scenario, BAR1 doesn't exist since the 64-bit BAR0
spans the two 32-bit BAR0 and BAR1. The loop index 'bar' would be
advanced by 2 in this case so on the next iteration the loop would
process BAR2.

> If 2 consecutive BARs are marked as reserved in reserved_bar of epc_features,
> the result should be the same right?

If both BAR0 and BAR2 are reserved and also 64-bit, the loop would
check BAR0 on its first iteration and skip BAR0 and BAR1, check BAR2
on its second iteration and skip BAR2 and BAR3, then check BAR4 on its
third iteration. If BAR4 is also 64-bit and reserved, the loop would
skip BAR4 and BAR5 and that would be the final iteration of the loop.

Regards,
Alan

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
