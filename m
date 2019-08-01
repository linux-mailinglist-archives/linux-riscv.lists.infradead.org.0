Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD0A7D3B9
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 05:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqexeaek/kEVcHAtw8iOxzfI+JBqyGgcByaotMQcQOI=; b=pIwbFkOARRHdXp
	/gZj4W5c7n/loBVR8/wL4aeplfhuIAkYHmDUX/le0YGeBMhfrcLpbhva5u0jRAS21SZTLdqZFsbNk
	N1MSCbSR2u8slDocHGfeLXCwf1FYoShbDkeNX942wORpVT6im17jKmPr+Cjx7QfGBpnxwCIHMarFE
	fdYwUdBFae2N7viEMqV7dAYl3DvxGpgImUgnPeryvb9ss+C1xDDuBxvFS6Y92CFvA8LnDgYaITFds
	sJQmsCdpNEz6qtxmqfp/1Qj86GbfI87fsV3tOMidUJLEprAelEQK8NZD7BAaem4I8gD9p96Tmi9m/
	0cFqo2BR8zLGJM4rECGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht1s5-0004ts-SV; Thu, 01 Aug 2019 03:35:17 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht1s2-0004tT-9C
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 03:35:15 +0000
Received: by mail-qt1-x843.google.com with SMTP id x22so63866573qtp.12
 for <linux-riscv@lists.infradead.org>; Wed, 31 Jul 2019 20:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pbBP1a5vz9LXfKrpqmLYROgp0dhYosum5tb/DUbL2NE=;
 b=YfTqkkhedP+30s5tEYK+1pvWEbwvFULIzEK/DaGsig/1f0A6WsHk+ovEGa3iYsMmfe
 Nk/Jij7FxNUBbO2AdwscxfrXkWFQgEioqU5JydD+iqdEr0sHNsZziR7KGVkG1k15yPxh
 g7msAiNaIfHm8FkRugefuVTQH1atly5yDXy5axyInrIF1vgeCo8BZ8rTieQ2svHqjiBS
 z7U4203ve8JS7RlqvMuu53J+iT6cFxAXDf5dOPGPG1O3J0/Ra1i9LcLWsbV3xh1vR+Kp
 TUWREKLrZ6dy9IxGmlNh9nJieNnn4T5GEMMCEBbF6Gqydd1hhOtODlGHmKi/pEFl9L51
 gMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pbBP1a5vz9LXfKrpqmLYROgp0dhYosum5tb/DUbL2NE=;
 b=nNm/0arCNmjBRjwTwlXicws1ANcoDiHocNoFi+7nIIUh9iUksoovSCVj568J9U/qcV
 qBPk/Ij3InJnpU0DHOrvfYfBAWLecTijvgLer0VsjuzwSyW9qYkpgiucfzKazsBNIkzl
 G1TI/Q+CtcX+hfHR73TL/xAbYntLTOIctTx44ldrs32P7PBO7754ueZyDqDEb+MrTduf
 XcSFP28RCsr8nSskI5eeiGJ+pMdw+9h81Npcp17FoMEACGXJINeb7TLiVoVmNJlo9WYa
 HMOI1PHYNCCV+8zHB3xQAC0/lE37HWqFHzUDt+OgxVIzOZ8wPQfjovUSrPM1W6DpSaH4
 8/7Q==
X-Gm-Message-State: APjAAAUigIz5iDldN4TiANjSxP2sCzqM3sbt5QVMWfY416YczWMZmhAf
 /vcCvFPjb6JKDNcwBe3euVgLwxoX8EApSK9DbJ8=
X-Google-Smtp-Source: APXvYqzhcZCTwiX7Qnv2duqf9sCENlg+TpJDs9LzbWZZkr/9Wer2rXkPvtIg+YgdewF22FLewWMVhnRRzxMJO/P9/ew=
X-Received: by 2002:a0c:8910:: with SMTP id 16mr91100016qvp.55.1564630513367; 
 Wed, 31 Jul 2019 20:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
In-Reply-To: <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Thu, 1 Aug 2019 11:34:37 +0800
Message-ID: <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_203514_350383_63109C6A 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, Zong Li <zong@andestech.com>,
 paul.walmsley@sifive.com, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTG9nYW4sCgpMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IOaWvCAyMDE5
5bm0OOaciDHml6Ug6YCx5ZubIOS4iuWNiDE6MDjlr6vpgZPvvJoKPgo+Cj4KPiBPbiAyMDE5LTA3
LTMxIDEyOjMwIGEubS4sIEdyZWVudGltZSBIdSB3cm90ZToKPiA+IEkgbG9vayB0aGlzIGlzc3Vl
IG1vcmUgY2xvc2VseS4KPiA+IEkgZm91bmQgaXQgYWx3YXlzIHNldHMgZWFjaCBtZW1ibG9jayBy
ZWdpb24gdG8gbm9kZSAwLiBEb2VzIHRoaXMgbWFrZSBzZW5zZT8KPiA+IEkgYW0gbm90IHN1cmUg
aWYgSSB1bmRlcnN0YW5kIHRoaXMgY29ycmVjdGx5LiBEbyB5b3UgaGF2ZSBhbnkgaWRlYSBmb3IK
PiA+IHRoaXM/IFRoYW5rIHlvdS4gOikKPgo+IFllcywgSSB0aGluayB0aGlzIGlzIG5vcm1hbC4g
V2hlbiB3ZSB0YWxrIGFib3V0IG1lbW9yeSBub2RlcyB3ZSdyZQo+IHRhbGtpbmcgYWJvdXQgTlVN
QSBub2RlcyB3aGljaCBpcyB1bnJlbGF0ZWQgdG8gZGV2aWNlIHRyZWUgbm9kZXMuCgpPaywgYnV0
IGl0IHNlZW1zIHRoZSBzZWNvbmQgbWVtYmxvY2tfcmVnaW9uIG1heSBvdmVyd3JpdGUgdGhlIGZp
cnN0Cm1lbWJsb2NrX3JlZ2lvbiBpbiBmb3JfZWFjaF9tZW1ibG9jayhtZW1vcnksIHJlZykgIGxv
b3AuIEl0IGFsd2F5cwp1c2VzIHRoaXMgQVBJIHRvIHNldCB0byBub2RlIDAuCm1lbWJsb2NrX3Nl
dF9ub2RlKFBGTl9QSFlTKHN0YXJ0X3BmbiksUEZOX1BIWVMoZW5kX3BmbiAtIHN0YXJ0X3Bmbiks
CiZtZW1ibG9jay5tZW1vcnksMCkKCgo+IEknbSBub3QgcmVhbGx5IHN1cmUgd2hhdCdzIGNhdXNp
bmcgdGhlIGNyYXNoLiBIYXZlIHlvdSB2ZXJpZmllZCBpdCdzCj4gdGhpcyBwYXRjaCB0aGF0IGNh
dXNlcyBpdD8gSXMgaXQgcmVsYXRlZCB0byB0aGVyZSBiZWluZyBhIGhvbGUgaW4geW91cgo+IG1l
bW9yeSwgZG9lcyBpdCB3b3JrIGlmIHlvdSBvbmx5IGhhdmUgb25lIG1lbW9yeSBub2RlPwo+CgpJ
dCB3b3JrcyBmaW5lIGlmIHRoZXJlIGlzIG9ubHkgb25lIG1lbW9yeSBub2RlIGRlc2NyaWJlZCBp
biBkdHMuCgpJIHRoaW5rIGl0IGlzIHJlbGF0ZWQgdG8gdGhlcmUgYmVpbmcgYSBob2xlIGluIHRo
ZSBkZXZpY2UgdHJlZSBzY3JpcHQuCkkgZG9uJ3QgYWN0dWFsbHkgaGF2ZSBhIHBsYXRmb3JtIHdp
dGggYSBob2xlIGluIHRoZSBtZW1vcnkgcmVnaW9uLCBzbwpJIHVzZSBkZXZpY2UgdHJlZSBzY3Jp
cHQgdG8gZGVzY3JpYmUgaXQuCgpUaGUgcGh5c2ljYWwgYWRkcmVzcyBsYXlvdXQgd2lsbCBiZSBs
aWtlIHRoaXMuCjJHQi0zR0ItaG9sZS02R0ItN0dCCgptZW1vcnlAODAwMDAwMDAgewogICAgZGV2
aWNlX3R5cGUgPSAibWVtb3J5IjsKICAgIHJlZyA9IDwweDAgMHg4MDAwMDAwMCAweDAgMHg0MDAw
MDAwMD47Cn07Cm1lbW9yeUAxODAwMDAwMDAgewogICAgZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsK
ICAgIHJlZyA9IDwweDEgMHg4MDAwMDAwMCAweDAgMHg0MDAwMDAwMD47Cn07CgpUaGFuayB5b3Ug
Zm9yIHRoZSBxdWljayByZXBseS4gOikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcmlzY3YK
