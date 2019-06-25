Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7078B558BD
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Jun 2019 22:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2qZhaBDmzRltvAzRcjDKzxN18+0qDYxiVuYdX5Pdr0=; b=IVc2hpmvy1jJLr
	/wK7vcbLJ1zQxv0kENNnGj0EP2A/SA5JbgpWYt8HCddTeW+TFnhMcyjlTYMawnXSJdcVymZ6Cuc+h
	U1KN+4ON+7LX7PvDLjhtGBtDlfp3nASGVSBLcR9+/GfbvRsYBbEhW/nR+qGeETH0aL5w3UGhGoCMi
	QQRpbPAkAIgftudOVCipiDPnKSrtB305iJskpYRfGU1cS3srUPw5jpnR79gR6GJv2h4XC6PE7/Sa8
	TSsmJRt2tbzhOC8CY2OIEkJCOlaYqiDXBKEg/SRXG7S4wA38GvsZ54Ayq38TbD8NChEQ8d68BXDM0
	im/XmXJADaPYehD/Bvrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfs1X-0001tf-6I; Tue, 25 Jun 2019 20:26:39 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfs1S-0001sm-Pz
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 20:26:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id w25so1852763ioc.8
 for <linux-riscv@lists.infradead.org>; Tue, 25 Jun 2019 13:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3dXZ1ZldviFyFOVz1FcLJwKSvcaZ1rjNgYTX6/8h5IQ=;
 b=X6YyqVl8grKfhWkl+F5Utw8TrTHiNiBboyq2VqpLQiszWuDZHm0EGVYkSi7KNFcbHh
 sJ0bmiq9v4oDJn5lkdHCvyfBuOK6citsYJGGWMD21WP0IhuQOJ9vDctIGuA29imxU5Ok
 1PvG9vtlWtIiLkZiFjfvNUmDTQCYgZg1qc82Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3dXZ1ZldviFyFOVz1FcLJwKSvcaZ1rjNgYTX6/8h5IQ=;
 b=F/j/o76C7oMGwSe4r26OAtnNaAicax62AB6DALIwe4Z00tXZSf9559ND1st4uSrhg5
 SSHdIeISaxoYtQlFCLM2exj4cuzBAHcsrPn2/If+Cn/awpmXOF7V8oc15+oBG3TyeeCa
 1v2fEmq0NSkhv8lbHyHjWQMyx3tudg/vId6DpRBFADjUIJTIhDYNml6R0WefPsylReph
 M55rO3V79+qdrOHfYgM6OyYx2y8rBXPB3MPPPM/tALU7IY5wyPVsxcnLLLIgpY20arNI
 V2p49EkyRihsAzRO2WKyGrdMIB/ojk9X7IkXnajj2KeSXeSvoGhReFsVlomqqyylalSY
 gwXQ==
X-Gm-Message-State: APjAAAWym7A+Ho8faa3D4IaYzEXtTLBpPrTricQGJ2GOnydm42bA93pB
 l00Ov8Cd2Gj5j0r8gKbhLy6csd7hmIq9OD0D5EeOtQ==
X-Google-Smtp-Source: APXvYqw+CW2Mln6le7x4W9V5GIvhL/JhV1LrVv2fcHmykNwbbgpsGnOoW4T9YtXdSwCVPv4OQhW1kAmI1VONvnZYHGU=
X-Received: by 2002:a5e:940b:: with SMTP id q11mr577045ioj.251.1561494392480; 
 Tue, 25 Jun 2019 13:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190621225938.27030-1-lukenels@cs.washington.edu>
 <87h88f9bm3.fsf@netronome.com>
In-Reply-To: <87h88f9bm3.fsf@netronome.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Tue, 25 Jun 2019 13:26:21 -0700
Message-ID: <CADasFoCrWPg3=kchWzJX5vDeymV9wiL7GnPxWDg4rQETyF5TeA@mail.gmail.com>
Subject: Re: [RFC PATCH bpf-next] RV32G eBPF JIT
To: Jiong Wang <jiong.wang@netronome.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_132634_870000_E27E7A95 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgOTo0NSBBTSBKaW9uZyBXYW5nIDxqaW9uZy53YW5nQG5l
dHJvbm9tZS5jb20+IHdyb3RlOgo+Cj4gTG9va3MgdG8gbWUgMzItYml0IG9wdGltaXphdGlvbiBp
cyBub3QgZW5hYmxlZC4KPgo+IElmIHlvdSBkZWZpbmUgYnBmX2ppdF9uZWVkc196ZXh0IHRvIHJl
dHVybiB0cnVlCj4KPiAgIGJvb2wgYnBmX2ppdF9uZWVkc196ZXh0KHZvaWQpCj4gICB7Cj4gICAg
ICAgICByZXR1cm4gdHJ1ZTsKPiAgIH0KPgo+IFRoZW4geW91IGRvbid0IG5lZWQgdG8gemVybyBo
aWdoIDMyLWJpdCB3aGVuIHdyaXRpbmcgMzItYml0IHN1Yi1yZWdpc3Rlcgo+IGFuZCB5b3UganVz
dCBuZWVkIHRvIGltcGxlbWVudCB0aGUgZXhwbGljaXQgemVybyBleHRlbnNpb24gaW5zbiB3aGlj
aCBpcyBhCj4gc3BlY2lhbCB2YXJpYW50IG9mIEJQRl9NT1YuIFRoaXMgY2FuIHNhdmUgcXVpdGUg
YSBmZXcgaW5zdHJ1Y3Rpb25zLiBSVjY0Cj4gYW5kIGFyY2hlcyBsaWtlIGFybSBoYXMgaW1wbGVt
ZW50ZWQgdGhpcywgcGxlYXNlIHNlYXJjaAo+ICJhdXgtPnZlcmlmaWVyX3pleHQiLgo+Cj4gQW5k
IHRoZXJlIGlzIGEgZG9jIGZvciB0aGlzIG9wdGltaXphdGlvbjoKPgo+IGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2JwZi9icGYtbmV4dC5naXQvdHJlZS9E
b2N1bWVudGF0aW9uL2JwZi9icGZfZGVzaWduX1FBLnJzdCNuMTY4CgpUaGFua3MgZm9yIHRoZSBw
b2ludGVyLiBJJ2xsIGFkZCB0aGlzIG9wdGltaXphdGlvbiBiZWZvcmUgc2VuZGluZyBvdXQKYW4g
dXBkYXRlZCB2ZXJzaW9uIG9mIHRoZSBwYXRjaC4KCuKAkyBMdWtlCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
