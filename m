Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2E5250FA
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 15:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U2atU65Ic+arkex292aS07J8XkPXpqDis4BGmaPinkI=; b=Jif8fK+rNGC5qM
	5CKTK2p9j1i3bTqNmUyLaYyZC1IYVNP1dsiZhcgWinrjxdFQQzJnhwsaeOeK2dapgO3eTfrHJEl2M
	zHwkg1Znhn3x6KsIqwQTSCtSNU7dnkPAcjIPJa1h8w7Gccu4wu7+bAEmRFCPBV3Km565QbVzkQhoB
	zTVbR9d4pCJRTMQLFhKQ4ATxcQjiTqKNZEnSVWnQl8/ayC4VrBrCsnuUj5gtf0tn566bBJizGpxiR
	FS+dLOGT0c6K+1gxY6NhRWJ3DtL9e1vVoiuL/miQN+od6/QdhyOvqRbrDtB3jFcW0ePXEyz3651FE
	TfSZJ1rBLh1ZAcWiF3gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT56a-0005MY-FO; Tue, 21 May 2019 13:47:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT56X-0005M6-8F
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 13:46:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id i21so8613738pgi.12
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 06:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lI/jv0cKdLTVm7f1etTSpFXRa1zlfZqLSdICL8eVFUw=;
 b=lCAUPhaIJyF7T7TW04duCQ1C/wP2Y+cJlgG5rd5N3NIcld0N4VZFJJQBQF7J++5d7Q
 2rZXu0V10I9YsLnYMN6RowqjmkCY7dQbFYhNXibShcrGu1X9bj8FzjyvVXsLeLCQEw54
 uPxXzxN3eUqWiAE++zFWF55PYe0XysKtlWzL7bPydyad26MOaK8mWoQ22ne18w2Y2cEt
 UnQkYn4qDcUsM7gDWPsL+8dowsHhrz5BHHuxEGcP/MR6FP0Sk2l5s4W3ZgijENMPbyPP
 d8gUXgVyE7ZjZJKDajKptNtxJ0B67G2pokldLIwaA1vWJVRYaP+VdA/Lzoa7NKOcm5k/
 wcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lI/jv0cKdLTVm7f1etTSpFXRa1zlfZqLSdICL8eVFUw=;
 b=NOuxf1pbcvXHv2eI6gUo6vICzrl5texGg3bu4Wfc1IS+IN2aMqDYGpMe14XoKOceeP
 VpP6pR+61LQ0srrFD6rs/y5Cg1EpIub7d8qTTSFQeNzbcvfo9IdLWRFO0gdydTCM/TWe
 cFIs0yQPTxfA4xwNSQ53fgSpjCLF804/ITvuFxTVx98tsGbRfgj7sftLGLkHPE/O74Ai
 xOhDEnKhDRNDl32DkNK2s7QEXxXgiClXISPRhelUkq0I8bGSJuDDyPNMqeWg5AGePELb
 Mw+zq88eA90RwLL1BZyL+RSjkGHZtO3N+NxFeGPWUdWrEEe9ol325EnydeJMZU+9d04G
 wc5g==
X-Gm-Message-State: APjAAAVfm//BJC9DIpLyST0hR29O3TfQCZXV+XIuM4nQc/3P4yzTcNPR
 lvLukp5oktj+M+dwj6Q7n+CFJTeCPBW/Dw==
X-Google-Smtp-Source: APXvYqw2+j6d1zPFsjQLOI4MpHishChca1g7J1s/r/q2nqond5Z/8tIZ/+UrzhLBM0v/KnAAiounUg==
X-Received: by 2002:a63:d613:: with SMTP id q19mr47586203pgg.339.1558446416048; 
 Tue, 21 May 2019 06:46:56 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.43])
 by smtp.gmail.com with ESMTPSA id i16sm8437701pfd.100.2019.05.21.06.46.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 06:46:55 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf] bpf,
 riscv: clear target register high 32-bits for and/or/xor on ALU32
Date: Tue, 21 May 2019 15:46:22 +0200
Message-Id: <20190521134622.18358-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_064657_295396_BACCC761 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jiong Wang <jiong.wang@netronome.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

V2hlbiB1c2luZyAzMi1iaXQgc3VicmVnaXN0ZXJzIChBTFUzMiksIHRoZSBSSVNDLVYgSklUIHdv
dWxkIG5vdCBjbGVhcgp0aGUgaGlnaCAzMi1iaXRzIG9mIHRoZSB0YXJnZXQgcmVnaXN0ZXIgYW5k
IHRoZXJlZm9yZSBnZW5lcmF0ZQppbmNvcnJlY3QgY29kZS4KCkUuZy4sIGluIHRoZSBmb2xsb3dp
bmcgY29kZToKCiAgJCBjYXQgdGVzdC5jCiAgdW5zaWduZWQgaW50IGYodW5zaWduZWQgbG9uZyBs
b25nIGEsCiAgCSAgICAgICB1bnNpZ25lZCBpbnQgYikKICB7CiAgCXJldHVybiAodW5zaWduZWQg
aW50KWEgJiBiOwogIH0KCiAgJCBjbGFuZy05IC10YXJnZXQgYnBmIC1PMiAtZW1pdC1sbHZtIC1T
IHRlc3QuYyAtbyAtIHwgXAogIAlsbGMtOSAtbWF0dHI9K2FsdTMyIC1tY3B1PXYzCiAgCS50ZXh0
CiAgCS5maWxlCSJ0ZXN0LmMiCiAgCS5nbG9ibAlmCiAgCS5wMmFsaWduCTMKICAJLnR5cGUJZixA
ZnVuY3Rpb24KICBmOgogIAlyMCA9IHIxCiAgCXcwICY9IHcyCiAgCWV4aXQKICAuTGZ1bmNfZW5k
MDoKICAJLnNpemUJZiwgLkxmdW5jX2VuZDAtZgoKVGhlIEpJVCB3b3VsZCBub3QgY2xlYXIgdGhl
IGhpZ2ggMzItYml0cyBvZiByMCBhZnRlciB0aGUKYW5kLW9wZXJhdGlvbiwgd2hpY2ggaW4gdGhp
cyBjYXNlIG1pZ2h0IGdpdmUgYW4gaW5jb3JyZWN0IHJldHVybgp2YWx1ZS4KCkFmdGVyIHRoaXMg
cGF0Y2gsIHRoYXQgaXMgbm90IHRoZSBjYXNlLCBhbmQgdGhlIHVwcGVyIDMyLWJpdHMgYXJlCmNs
ZWFyZWQuCgpSZXBvcnRlZC1ieTogSmlvbmcgV2FuZyA8amlvbmcud2FuZ0BuZXRyb25vbWUuY29t
PgpGaXhlczogMjM1M2VjYzZmOTFmICgiYnBmLCByaXNjdjogYWRkIEJQRiBKSVQgZm9yIFJWNjRH
IikKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAZ21haWwuY29tPgot
LS0KIGFyY2gvcmlzY3YvbmV0L2JwZl9qaXRfY29tcC5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L25ldC9icGZfaml0
X2NvbXAuYyBiL2FyY2gvcmlzY3YvbmV0L2JwZl9qaXRfY29tcC5jCmluZGV4IDgwYjEyYWE1ZTEw
ZC4uZTVjOGQ2NzViZDZlIDEwMDY0NAotLS0gYS9hcmNoL3Jpc2N2L25ldC9icGZfaml0X2NvbXAu
YworKysgYi9hcmNoL3Jpc2N2L25ldC9icGZfaml0X2NvbXAuYwpAQCAtNzU5LDE0ICs3NTksMjAg
QEAgc3RhdGljIGludCBlbWl0X2luc24oY29uc3Qgc3RydWN0IGJwZl9pbnNuICppbnNuLCBzdHJ1
Y3QgcnZfaml0X2NvbnRleHQgKmN0eCwKIAljYXNlIEJQRl9BTFUgfCBCUEZfQU5EIHwgQlBGX1g6
CiAJY2FzZSBCUEZfQUxVNjQgfCBCUEZfQU5EIHwgQlBGX1g6CiAJCWVtaXQocnZfYW5kKHJkLCBy
ZCwgcnMpLCBjdHgpOworCQlpZiAoIWlzNjQpCisJCQllbWl0X3pleHRfMzIocmQsIGN0eCk7CiAJ
CWJyZWFrOwogCWNhc2UgQlBGX0FMVSB8IEJQRl9PUiB8IEJQRl9YOgogCWNhc2UgQlBGX0FMVTY0
IHwgQlBGX09SIHwgQlBGX1g6CiAJCWVtaXQocnZfb3IocmQsIHJkLCBycyksIGN0eCk7CisJCWlm
ICghaXM2NCkKKwkJCWVtaXRfemV4dF8zMihyZCwgY3R4KTsKIAkJYnJlYWs7CiAJY2FzZSBCUEZf
QUxVIHwgQlBGX1hPUiB8IEJQRl9YOgogCWNhc2UgQlBGX0FMVTY0IHwgQlBGX1hPUiB8IEJQRl9Y
OgogCQllbWl0KHJ2X3hvcihyZCwgcmQsIHJzKSwgY3R4KTsKKwkJaWYgKCFpczY0KQorCQkJZW1p
dF96ZXh0XzMyKHJkLCBjdHgpOwogCQlicmVhazsKIAljYXNlIEJQRl9BTFUgfCBCUEZfTVVMIHwg
QlBGX1g6CiAJY2FzZSBCUEZfQUxVNjQgfCBCUEZfTVVMIHwgQlBGX1g6Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNj
diBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
