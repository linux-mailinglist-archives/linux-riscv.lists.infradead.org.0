Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B4C57C87
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCLcb0cARMPlC73kSp48vD0TlBPckajqEG+3dho9IHk=; b=oSxrl7MPKYdfIS
	6Y1QJxtIkzXDmHZfoBIagCExEUEhvMhB2wBxN+VBgm1nzIDnYa4nmol/Nyyh93+JGeH36TnuOnDVO
	YZTMUfyDQoZxNYXt3TdJ8A1ddXvkLq+zgz7s53sRb42vXEmtGgJQLSzYimgMvgblsmlc0mJX8bJD3
	rNdZcadOGHb+WUGqKrL56IjwniHQ9VJ6dANntiY6lGDZnk40Ziw7oSQE7rrrJUNZWmJZAu0eoeb/t
	JHJ0H6kNJYl6BJL/T88XI74A8wUnt2xieKJG0MdTJGorYM5lBEMu5XSae32oG1b/grjgVms0Y5Q/G
	OWKrm+tC2Lp2Cs4AkU5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOHt-0000AS-22; Thu, 27 Jun 2019 06:53:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8t-0006KM-Vf
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pKpTYM5rG8jLoiUnkR/ZL0mmEDCaEWzKhq3FN+kNpOE=; b=N0pKaAr3F5MOjqkFrl/QDvTp0e
 nNYyvxO+fB0Sc1X8jU4II+EBFFhGUDXBH2HBrc6TPWVMFM2nVRJR+HUFM4gdwuDqQA4is2MITPt59
 JmSznM8SvvDj5OEZUqmGmyIP70HkaoW0IqVMR2e3lGbj8f2etdJwbtkhYMCkc0OKh+FiVMGogduWr
 Xm8OW5W7yU3i5hUuzKOAZ8uXbinu5W3mAhWQm2CgGTCjA8Rel/MAUcbmShDSY7ljvFvLacS4r9bix
 hRUTVBKKx/wCw1tCBUQnsX5KspBn5zxoF10ug+gVftm5GgkOJ9NDNRQnDyhLtGenXq6XCe1y71x4b
 +hTfnJmw==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIJZ-0003vC-N2
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 00:31:03 +0000
Received: from sasha-vm.mshome.net (unknown [107.242.116.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD310217D8;
 Thu, 27 Jun 2019 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561595457;
 bh=twBwnosR6QbQtSbolAgpDnfbS9aPjP6N+mM0O1dqyMY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tR2axxBCCwWOhn/ZNsqegTxVCy83jwPU34pV36pDKs+OvoyF/jaFtwZtXsxT1o8nJ
 h1XvuE29+2Riaqv1vsvuRnx7fCC+9fbnAD/juVo5qHJ5GOrng7Cr2xBvSwkhkW00m3
 tY3CZ1GR7FgiTh1iHDtzpx16WsHOhMvMt5IR2F90=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 11/95] bpf,
 riscv: clear target register high 32-bits for and/or/xor on ALU32
Date: Wed, 26 Jun 2019 20:28:56 -0400
Message-Id: <20190627003021.19867-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627003021.19867-1-sashal@kernel.org>
References: <20190627003021.19867-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jiong Wang <jiong.wang@netronome.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAZ21haWwuY29tPgoKWyBVcHN0cmVhbSBj
b21taXQgZmUxMjFlZTUzMWQxMzYyODEwYmZkMzBmMzhhMWI4OGIxZDNkMzc2YyBdCgpXaGVuIHVz
aW5nIDMyLWJpdCBzdWJyZWdpc3RlcnMgKEFMVTMyKSwgdGhlIFJJU0MtViBKSVQgd291bGQgbm90
IGNsZWFyCnRoZSBoaWdoIDMyLWJpdHMgb2YgdGhlIHRhcmdldCByZWdpc3RlciBhbmQgdGhlcmVm
b3JlIGdlbmVyYXRlCmluY29ycmVjdCBjb2RlLgoKRS5nLiwgaW4gdGhlIGZvbGxvd2luZyBjb2Rl
OgoKICAkIGNhdCB0ZXN0LmMKICB1bnNpZ25lZCBpbnQgZih1bnNpZ25lZCBsb25nIGxvbmcgYSwK
ICAJICAgICAgIHVuc2lnbmVkIGludCBiKQogIHsKICAJcmV0dXJuICh1bnNpZ25lZCBpbnQpYSAm
IGI7CiAgfQoKICAkIGNsYW5nLTkgLXRhcmdldCBicGYgLU8yIC1lbWl0LWxsdm0gLVMgdGVzdC5j
IC1vIC0gfCBcCiAgCWxsYy05IC1tYXR0cj0rYWx1MzIgLW1jcHU9djMKICAJLnRleHQKICAJLmZp
bGUJInRlc3QuYyIKICAJLmdsb2JsCWYKICAJLnAyYWxpZ24JMwogIAkudHlwZQlmLEBmdW5jdGlv
bgogIGY6CiAgCXIwID0gcjEKICAJdzAgJj0gdzIKICAJZXhpdAogIC5MZnVuY19lbmQwOgogIAku
c2l6ZQlmLCAuTGZ1bmNfZW5kMC1mCgpUaGUgSklUIHdvdWxkIG5vdCBjbGVhciB0aGUgaGlnaCAz
Mi1iaXRzIG9mIHIwIGFmdGVyIHRoZQphbmQtb3BlcmF0aW9uLCB3aGljaCBpbiB0aGlzIGNhc2Ug
bWlnaHQgZ2l2ZSBhbiBpbmNvcnJlY3QgcmV0dXJuCnZhbHVlLgoKQWZ0ZXIgdGhpcyBwYXRjaCwg
dGhhdCBpcyBub3QgdGhlIGNhc2UsIGFuZCB0aGUgdXBwZXIgMzItYml0cyBhcmUKY2xlYXJlZC4K
ClJlcG9ydGVkLWJ5OiBKaW9uZyBXYW5nIDxqaW9uZy53YW5nQG5ldHJvbm9tZS5jb20+CkZpeGVz
OiAyMzUzZWNjNmY5MWYgKCJicGYsIHJpc2N2OiBhZGQgQlBGIEpJVCBmb3IgUlY2NEciKQpTaWdu
ZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBnbWFpbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IERhbmllbCBCb3JrbWFubiA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+ClNpZ25lZC1vZmYt
Ynk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL3Jpc2N2L25ldC9i
cGZfaml0X2NvbXAuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9uZXQvYnBmX2ppdF9jb21wLmMgYi9hcmNoL3Jpc2N2
L25ldC9icGZfaml0X2NvbXAuYwppbmRleCA4MGIxMmFhNWUxMGQuLmU1YzhkNjc1YmQ2ZSAxMDA2
NDQKLS0tIGEvYXJjaC9yaXNjdi9uZXQvYnBmX2ppdF9jb21wLmMKKysrIGIvYXJjaC9yaXNjdi9u
ZXQvYnBmX2ppdF9jb21wLmMKQEAgLTc1OSwxNCArNzU5LDIwIEBAIHN0YXRpYyBpbnQgZW1pdF9p
bnNuKGNvbnN0IHN0cnVjdCBicGZfaW5zbiAqaW5zbiwgc3RydWN0IHJ2X2ppdF9jb250ZXh0ICpj
dHgsCiAJY2FzZSBCUEZfQUxVIHwgQlBGX0FORCB8IEJQRl9YOgogCWNhc2UgQlBGX0FMVTY0IHwg
QlBGX0FORCB8IEJQRl9YOgogCQllbWl0KHJ2X2FuZChyZCwgcmQsIHJzKSwgY3R4KTsKKwkJaWYg
KCFpczY0KQorCQkJZW1pdF96ZXh0XzMyKHJkLCBjdHgpOwogCQlicmVhazsKIAljYXNlIEJQRl9B
TFUgfCBCUEZfT1IgfCBCUEZfWDoKIAljYXNlIEJQRl9BTFU2NCB8IEJQRl9PUiB8IEJQRl9YOgog
CQllbWl0KHJ2X29yKHJkLCByZCwgcnMpLCBjdHgpOworCQlpZiAoIWlzNjQpCisJCQllbWl0X3pl
eHRfMzIocmQsIGN0eCk7CiAJCWJyZWFrOwogCWNhc2UgQlBGX0FMVSB8IEJQRl9YT1IgfCBCUEZf
WDoKIAljYXNlIEJQRl9BTFU2NCB8IEJQRl9YT1IgfCBCUEZfWDoKIAkJZW1pdChydl94b3IocmQs
IHJkLCBycyksIGN0eCk7CisJCWlmICghaXM2NCkKKwkJCWVtaXRfemV4dF8zMihyZCwgY3R4KTsK
IAkJYnJlYWs7CiAJY2FzZSBCUEZfQUxVIHwgQlBGX01VTCB8IEJQRl9YOgogCWNhc2UgQlBGX0FM
VTY0IHwgQlBGX01VTCB8IEJQRl9YOgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4
LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
